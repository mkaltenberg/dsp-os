import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/constants/providers/current_season_name.dart';
import 'package:fieldscan/src/repositories/field_child_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotStartedView extends ConsumerStatefulWidget {
  final AppModule appModule;
  const NotStartedView({Key? key, required this.appModule}) : super(key: key);

  @override
  NotStartedViewState createState() => NotStartedViewState();
}

class NotStartedViewState extends ConsumerState<NotStartedView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AsyncValue<Season> season = ref.watch(currentSeasonProvider);

    return season.when(
        loading: () => const CircularProgressIndicator(),
        error: (error, stackTrace) => Text('Error: $error'),
        data: (season) {
          Stream<List<FieldChild>> fieldChildStream = ref
              .read(fieldChildRepository)
              .getStreamByInspectionStatusKey(
                  season.id,
                  InspectionStatusKey.NOT_YET_STARTED,
                  widget.appModule.fieldInspectionModuleKey!);
          return StreamBuilder<List<FieldChild>>(
            stream: fieldChildStream,
            builder: (context, children) {
              if (children.hasError) {
                if (kDebugMode) {
                  print(children.error.toString());
                }

                return Text(children.error.toString());
              }

              if (children.connectionState == ConnectionState.waiting) {
                return const Center(
                    widthFactor: 50.0,
                    heightFactor: 50.0,
                    child: CircularProgressIndicator());
              }

              if (!children.hasData) {
                return const Center(
                    widthFactor: 50.0,
                    heightFactor: 50.0,
                    child: CircularProgressIndicator());
              }

              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: children.data!.length,
                      prototypeItem: const Card(
                          elevation: 5.0,
                          child: ListTile(
                            title: Text(''),
                            subtitle: Text(''),
                          )),
                      itemBuilder: (context, index) {
                        return Slidable(
                            endActionPane: ActionPane(
                              motion: const BehindMotion(),
                              children: [
                                SlidableAction(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  autoClose: true,
                                  label: 'Move To In Progress',
                                  onPressed: (BuildContext context) async {
                                    // Step 1 = Get last completed inspection
                                    FieldChild updatedItem;
                                    switch (widget
                                        .appModule.fieldInspectionModuleKey) {
                                      case FieldInspectionModuleKey.DETASSELING:
                                        updatedItem = children.data![index].copyWith(
                                            detasselingStandardSeedCornInspectionStatus:
                                                InspectionStatusKey.IN_PROGRESS,
                                            detasselingStandardSeedCornMostRecentInspection:
                                                '-Not Yet Started-',
                                            detasselingStandardSeedCornRequiredInspections:
                                                5);
                                        await Amplify.DataStore.save(
                                            updatedItem);
                                      case FieldInspectionModuleKey
                                            .LEAF_TO_TASSEL:
                                        updatedItem = children.data![index].copyWith(
                                            leafToTasselStandardSeedCornInspectionStatus:
                                                InspectionStatusKey.IN_PROGRESS,
                                            leafToTasselStandardSeedCornMostRecentInspection:
                                                '-Not Yet Started-',
                                            leafToTasselStandardSeedCornRequiredInspections:
                                                1);
                                        await Amplify.DataStore.save(
                                            updatedItem);
                                      case FieldInspectionModuleKey.POPULATIONS:
                                        updatedItem = children.data![index].copyWith(
                                            populationsStandardSeedCornInspectionStatus:
                                                InspectionStatusKey.IN_PROGRESS,
                                            populationsStandardSeedCornMostRecentInspection:
                                                '-Not Yet Started-',
                                            populationsStandardSeedCornRequiredInspections:
                                                3);
                                        await Amplify.DataStore.save(
                                            updatedItem);
                                      case FieldInspectionModuleKey.SCOUTING:
                                        updatedItem = children.data![index].copyWith(
                                            scoutingStandardSeedCornInspectionStatus:
                                                InspectionStatusKey.IN_PROGRESS,
                                            scoutingStandardSeedCornMostRecentInspection:
                                                '-Not Yet Started-',
                                            scoutingStandardSeedCornRequiredInspections:
                                                1);
                                        await Amplify.DataStore.save(
                                            updatedItem);
                                      default:
                                        break;
                                    }
                                  },
                                )
                              ],
                            ),
                            child: Card(
                                elevation: 5.0,
                                child: ListTile(
                                  title: Text(children.data![index].fieldName),
                                  subtitle:
                                      Text(children.data![index].fieldNumber),
                                )));
                      },
                    ),
                  ),
                ],
              );
            },
          );
        });
  }
}
