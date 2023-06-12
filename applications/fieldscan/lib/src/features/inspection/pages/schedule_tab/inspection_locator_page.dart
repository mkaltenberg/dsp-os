import 'dart:async';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/constants/providers/current_module.dart';
import 'package:fieldscan/src/constants/providers/router_tab_bar_notifier.dart';
import 'package:fieldscan/src/features/inspection/pages/schedule_tab/inspecion_form_page/inspection_form_page.dart';
import 'package:fieldscan/src/repositories/inspection_parent_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:stringr/stringr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';

enum VisableInspections { recent, season }

class InspectionLocatorPage extends ConsumerStatefulWidget {
  final InspectionParent inspectionParent;
  final GeoPointObject mapCenter;
  const InspectionLocatorPage(
      {Key? key, required this.mapCenter, required this.inspectionParent})
      : super(key: key);

  @override
  InspectionLocatorPageState createState() => InspectionLocatorPageState();
}

class InspectionLocatorPageState extends ConsumerState<InspectionLocatorPage> {
  late GoogleMapController _controller;
  late StreamSubscription<Position> subscription;
  late GeoPointObject? _latestLocation;
  VisableInspections _selectedSegment = VisableInspections.recent;

  Set<Marker> generateMarkers(List<InspectionChild> data) {
    Set<Marker> markers = {};

    for (var child in data) {
      var firstName = child.userFirstName;
      var lastName = child.userLastName;
      Marker newMarker = Marker(
          markerId: MarkerId(child.id),
          infoWindow: InfoWindow(
              title: child.date.toString(), snippet: '$firstName $lastName'),
          position: LatLng(child.location.latitude, child.location.longitude),
          icon: BitmapDescriptor.defaultMarker);
      markers.add(newMarker);
    }
    return markers;
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
    late LocationSettings locationSettings;

    if (defaultTargetPlatform == TargetPlatform.android) {
      locationSettings = AndroidSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 5,
        forceLocationManager: true,
        intervalDuration: const Duration(seconds: 10),
        //(Optional) Set foreground notification config to keep the app alive
        //when going to the background
        // foregroundNotificationConfig: const ForegroundNotificationConfig(
        //   notificationText:
        //       "Example app will continue to receive your location even when you aren't using it",
        //   notificationTitle: "Running in Background",
        //   enableWakeLock: true,
        // )
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      locationSettings = AppleSettings(
        accuracy: LocationAccuracy.high,
        activityType: ActivityType.fitness,
        distanceFilter: 5,
        pauseLocationUpdatesAutomatically: true,
        // Only set to true if our app will be started up in the background.
        showBackgroundLocationIndicator: false,
      );
    } else {
      locationSettings = const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 5,
      );
    }

    subscription =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((Position? position) {
      print(position == null
          ? 'Unknown'
          : '${position.latitude.toString()}, ${position.longitude.toString()}');
      if (position != null) {
        _latestLocation = GeoPointObject(
            latitude: position.latitude, longitude: position.longitude);
        _controller.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
                target: LatLng(position.latitude, position.longitude),
                zoom: 15),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentModule = ref.read(currentModuleProvider);

    Stream<List<InspectionParent>> inspectionParentStream = ref
        .read(inspectionParentRepository)
        .inspectionParentStreamByInspectionModule(
            widget.inspectionParent.fieldInspectionModule);

    return StreamBuilder<List<InspectionParent>>(
        stream: inspectionParentStream,
        builder: (BuildContext context, inspectionParents) {
          if (inspectionParents.hasError) {
            return const Text('Something went wrong');
          }

          if (inspectionParents.hasData) {
            List<InspectionChild> getRecentLocations(int limit) {
              List<InspectionChild> objects = [];
              if (inspectionParents.data != null) {
                for (var parent in inspectionParents.data!) {
                  if (parent.InspectionChildren != null) {
                    for (var child in parent.InspectionChildren!) {
                      objects.add(child);
                    }
                  }
                }
              }
              return objects.length <= limit
                  ? objects
                  : objects.sublist(0, limit - 1);
            }

            List<InspectionChild> getAllLocations() {
              List<InspectionChild> objects = [];
              if (inspectionParents.data != null) {
                for (var parent in inspectionParents.data!) {
                  if (parent.InspectionChildren != null) {
                    for (var child in parent.InspectionChildren!) {
                      objects.add(child);
                    }
                  }
                }
              }
              return objects;
            }

            Set<Marker> _markers;

            if (_selectedSegment == VisableInspections.recent) {
              _markers = generateMarkers(getRecentLocations(25));
            } else {
              _markers = generateMarkers(getAllLocations());
            }

            return WillPopScope(
              onWillPop: () async {
                subscription.cancel();
                return true;
              },
              child: Scaffold(
                drawerEnableOpenDragGesture: false,
                appBar: AppBar(
                  title: Text(
                      '${(widget.inspectionParent.fieldName).toLowerCase().titleCase()} - ${widget.inspectionParent.fieldNumber}'),
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      ref
                          .watch(routerTabBarProvider.notifier)
                          .setIsVisable(true);
                      subscription.cancel();
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerFloat,
                floatingActionButton: Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: FloatingActionButton.extended(
                      onPressed: (() {
                        if (_latestLocation != null) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => InspectionFormPage(
                                    inspectionParentDoc:
                                        widget.inspectionParent,
                                    passedLocation: _latestLocation!,
                                    callback: () {
                                      print('CallBack Called');
                                      if (subscription.isPaused) {
                                        subscription.resume();
                                      }
                                    },
                                  )));
                          subscription.pause();
                        } else {
                          var snackBar = SnackBar(
                            elevation: 12,
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.transparent,
                            content: AwesomeSnackbarContent(
                              title: 'Error!',
                              message:
                                  'Current location not found! Please check location settings or call Matthew Kaltenberg',
                              contentType: ContentType.failure,
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }),
                      label: const Text(
                        'Begin Inspection',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      elevation: 12,
                      foregroundColor: Colors.white,
                      backgroundColor:
                          ref.watch(currentModule.colorScheme).primary),
                ),
                body: Column(
                  children: [
                    Container(
                      height: 40,
                      color: ref.watch(currentModule.colorScheme).primary,
                      child: Center(
                          child: CupertinoSlidingSegmentedControl<
                              VisableInspections>(
                        children: const <VisableInspections, Widget>{
                          VisableInspections.recent: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Recent',
                              style: TextStyle(color: CupertinoColors.white),
                            ),
                          ),
                          VisableInspections.season: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Season',
                              style: TextStyle(color: CupertinoColors.white),
                            ),
                          )
                        },
                        thumbColor: Colors.grey,
                        groupValue: _selectedSegment,
                        onValueChanged: (VisableInspections? value) {
                          setState(() {
                            subscription.cancel();
                            _selectedSegment = value!;
                          });
                        },
                      )),
                    ),
                    Expanded(
                      child: GoogleMap(
                        initialCameraPosition: CameraPosition(
                            target: LatLng(widget.mapCenter.latitude,
                                widget.mapCenter.longitude),
                            zoom: 15),
                        mapType: MapType.hybrid,
                        onMapCreated: _onMapCreated,
                        myLocationEnabled: true,
                        mapToolbarEnabled: false,
                        markers: _markers,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return Container();
        });
  }
}
