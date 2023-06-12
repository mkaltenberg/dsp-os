import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/constants/providers/current_module.dart';
import 'package:fieldscan/src/features/inspection/pages/schedule_tab/inspecion_form_page/inspection_forms/detasseling_standard_form.dart';
import 'package:fieldscan/src/features/inspection/pages/schedule_tab/inspecion_form_page/inspection_forms/leaf_to_tassel_standard_form.dart';
import 'package:fieldscan/src/features/inspection/pages/schedule_tab/inspecion_form_page/inspection_forms/populations_standard_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InspectionFormPage extends ConsumerStatefulWidget {
  final InspectionParent inspectionParentDoc;
  final GeoPointObject passedLocation;
  final Function callback;

  const InspectionFormPage(
      {Key? key,
      required this.callback,
      required this.inspectionParentDoc,
      required this.passedLocation})
      : super(key: key);

  @override
  InspectionFormPageState createState() => InspectionFormPageState();
}

class InspectionFormPageState extends ConsumerState<InspectionFormPage> {
  @override
  Widget build(BuildContext context) {
    String fieldName = widget.inspectionParentDoc.fieldName;
    String fieldNumber = widget.inspectionParentDoc.fieldNumber;
    String hybridName = widget.inspectionParentDoc.hybridName;

    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                  'Are you sure you would like to cancel? You\'ll lose all information you\'ve entered.'),
              actionsAlignment: MainAxisAlignment.spaceBetween,
              actions: [
                TextButton(
                  onPressed: () {
                    widget.callback.call();
                    Navigator.pop(context, true);
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text('No'),
                ),
              ],
            );
          },
        );
        return shouldPop!;
      },
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Inspection Form'),
          ),
          body: getModuleForm(
              fieldName, fieldNumber, hybridName, widget.passedLocation)),
    );
  }

  Widget? getModuleForm(String fieldName, String fieldNumber, String hybridName,
      GeoPointObject userLocation) {
    switch (ref.watch(currentModuleProvider)) {
      case AppModule.main:
      case AppModule.fields:
        return Container();
      case AppModule.scouting:
        //TODO: Implement Scouting Module
        return null;
      case AppModule.populations:
        return PopulationsStandardForm(
          fieldName: fieldName,
          fieldNumber: fieldNumber,
          hybridName: hybridName,
          userLocation: userLocation,
          inspectionParent: widget.inspectionParentDoc,
          callback: widget.callback,
        );
      case AppModule.leafToTassel:
        return LeafToTasselStandardForm(
          fieldName: fieldName,
          fieldNumber: fieldNumber,
          hybridName: hybridName,
          userLocation: userLocation,
          inspectionParent: widget.inspectionParentDoc,
          callback: widget.callback,
        );
      case AppModule.detasseling:
        return DetasselingStandardForm(
            inspectionParent: widget.inspectionParentDoc,
            fieldName: fieldName,
            fieldNumber: fieldNumber,
            userLocation: userLocation,
            hybridName: hybridName,
            callback: widget.callback);
    }
  }
}
