import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fieldChildRepository = Provider.autoDispose<FieldChildRepository>(
    (ref) => FieldChildRepositoryImpl());

class FieldChildCreateObject {
  final String fieldParentName;
  final String fieldNumber;
  final String hybridName;
  final String seasonName;
  final bool isCertified;
  final String growerName;
  final List<InspectionConfigurationObject> inspectionConfigurations;
  final List<PlantingDateObject> plantingDates;
  final FieldAcresObject acres;

  FieldChildCreateObject(
      this.fieldParentName,
      this.fieldNumber,
      this.hybridName,
      this.seasonName,
      this.isCertified,
      this.plantingDates,
      this.inspectionConfigurations,
      this.growerName,
      this.acres);
}

abstract class FieldChildRepository {
  Future<void> create(FieldChildCreateObject object);
  Future<FieldChild?> getDocByID(String docID);
  Stream<List<FieldChild>> getStreamByInspectionStatusKey(String seasonID,
      InspectionStatusKey statusKey, FieldInspectionModuleKey moduleKey);
  Stream<List<FieldChild>>
      getStreamByInspectionStatusKeySortedByMostRecentInspection(
          String seasonID,
          InspectionStatusKey statusKey,
          FieldInspectionModuleKey moduleKey);
}

class FieldChildRepositoryImpl implements FieldChildRepository {
  FieldChildRepositoryImpl();

  @override
  Future<void> create(FieldChildCreateObject object) async {
    var fieldParentDoc = await Amplify.DataStore.query(FieldParent.classType,
        where: FieldParent.FIELDNAME.eq(object.fieldParentName));
    var hybridDoc = await Amplify.DataStore.query(Hybrid.classType,
        where: Hybrid.NAME.eq(object.hybridName));
    var seasonDoc = await Amplify.DataStore.query(Season.classType,
        where: Season.NAME.eq(object.seasonName));
    var growerDoc = await Amplify.DataStore.query(Grower.classType,
        where: Grower.NAME.eq(object.growerName));

    List<String> getInspectionTypeIds() {
      if (fieldParentDoc.first.isOrganic) {
        return [
          'd7da22dc-4e75-4cc7-a524-858208659abd',
          '969cc168-deef-42c3-a160-662b55da5d20',
          '328cc325-ee74-470e-9c9f-89e612212244',
          '5c4230b5-b2d1-4a3b-ab04-8120ea417192'
        ];
      } else {
        return [
          'f88cfa7e-c8b4-4b10-bc91-3feadea45b4f',
          '300ed24e-5b92-4fec-8489-8dd84584b3f0',
          '27efe3b6-8268-472e-aae9-055afce9b9c6',
          'feec3176-3933-438a-b794-cdcbb5652048'
        ];
      }
    }

    var doc = FieldChild(
        seasonID: seasonDoc.first.id,
        fieldparentID: fieldParentDoc.first.id,
        hybridID: hybridDoc.first.id,
        inspectionConfigurations: object.inspectionConfigurations,
        growerShares: [
          GrowerShareObject(growerID: growerDoc.first.id, sharePercentage: 100)
        ],
        plantingDates: object.plantingDates,
        acres: object.acres,
        fieldName: object.fieldParentName,
        fieldNumber: object.fieldNumber,
        hybridName: object.hybridName);

    await Amplify.DataStore.save(doc);
  }

  @override
  Future<FieldChild?> getDocByID(String docID) async {
    var docs = await Amplify.DataStore.query(FieldChild.classType,
        where: FieldChild.ID.eq(docID));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }

  @override
  Stream<List<FieldChild>> getStreamByInspectionStatusKey(String seasonID,
      InspectionStatusKey statusKey, FieldInspectionModuleKey moduleKey) {
    switch (moduleKey) {
      case FieldInspectionModuleKey.DETASSELING:
        return Amplify.DataStore.query(FieldChild.classType,
            where: FieldChild.SEASONID.eq(seasonID).and(FieldChild
                .DETASSELINGSTANDARDSEEDCORNINSPECTIONSTATUS
                .eq(statusKey)),
            sortBy: [
              FieldChild.FIELDNAME.ascending(),
              FieldChild.FIELDNUMBER.ascending()
            ]).asStream();
      case FieldInspectionModuleKey.LEAF_TO_TASSEL:
        return Amplify.DataStore.query(FieldChild.classType,
            where: FieldChild.SEASONID.eq(seasonID).and(FieldChild
                .LEAFTOTASSELSTANDARDSEEDCORNINSPECTIONSTATUS
                .eq(statusKey)),
            sortBy: [
              FieldChild.FIELDNAME.ascending(),
              FieldChild.FIELDNUMBER.ascending()
            ]).asStream();
      case FieldInspectionModuleKey.POPULATIONS:
        return Amplify.DataStore.query(FieldChild.classType,
            where: FieldChild.SEASONID.eq(seasonID).and(FieldChild
                .POPULATIONSSTANDARDSEEDCORNINSPECTIONSTATUS
                .eq(statusKey)),
            sortBy: [
              FieldChild.FIELDNAME.ascending(),
              FieldChild.FIELDNUMBER.ascending()
            ]).asStream();
      case FieldInspectionModuleKey.SCOUTING:
        return Amplify.DataStore.query(FieldChild.classType,
            where: FieldChild.SEASONID.eq(seasonID).and(FieldChild
                .SCOUTINGSTANDARDSEEDCORNINSPECTIONSTATUS
                .eq(statusKey)),
            sortBy: [
              FieldChild.FIELDNAME.ascending(),
              FieldChild.FIELDNUMBER.ascending()
            ]).asStream();
    }
  }

  @override
  Stream<List<FieldChild>>
      getStreamByInspectionStatusKeySortedByMostRecentInspection(
          String seasonID,
          InspectionStatusKey statusKey,
          FieldInspectionModuleKey moduleKey) {
    switch (moduleKey) {
      case FieldInspectionModuleKey.DETASSELING:
        return Amplify.DataStore.query(FieldChild.classType,
            where: FieldChild.SEASONID.eq(seasonID).and(FieldChild
                .DETASSELINGSTANDARDSEEDCORNINSPECTIONSTATUS
                .eq(statusKey)),
            sortBy: [
              FieldChild.DETASSELINGSTANDARDSEEDCORNMOSTRECENTINSPECTION
                  .ascending(),
              FieldChild.FIELDNAME.ascending(),
              FieldChild.FIELDNUMBER.ascending()
            ]).asStream();
      case FieldInspectionModuleKey.LEAF_TO_TASSEL:
        return Amplify.DataStore.query(FieldChild.classType,
            where: FieldChild.SEASONID.eq(seasonID).and(FieldChild
                .LEAFTOTASSELSTANDARDSEEDCORNINSPECTIONSTATUS
                .eq(statusKey)),
            sortBy: [
              FieldChild.LEAFTOTASSELSTANDARDSEEDCORNMOSTRECENTINSPECTION
                  .ascending(),
              FieldChild.FIELDNAME.ascending(),
              FieldChild.FIELDNUMBER.ascending()
            ]).asStream();
      case FieldInspectionModuleKey.POPULATIONS:
        return Amplify.DataStore.query(FieldChild.classType,
            where: FieldChild.SEASONID.eq(seasonID).and(FieldChild
                .POPULATIONSSTANDARDSEEDCORNINSPECTIONSTATUS
                .eq(statusKey)),
            sortBy: [
              FieldChild.POPULATIONSSTANDARDSEEDCORNMOSTRECENTINSPECTION
                  .ascending(),
              FieldChild.FIELDNAME.ascending(),
              FieldChild.FIELDNUMBER.ascending()
            ]).asStream();
      case FieldInspectionModuleKey.SCOUTING:
        return Amplify.DataStore.query(FieldChild.classType,
            where: FieldChild.SEASONID.eq(seasonID).and(FieldChild
                .SCOUTINGSTANDARDSEEDCORNINSPECTIONSTATUS
                .eq(statusKey)),
            sortBy: [
              FieldChild.SCOUTINGSTANDARDSEEDCORNMOSTRECENTINSPECTION
                  .ascending(),
              FieldChild.FIELDNAME.ascending(),
              FieldChild.FIELDNUMBER.ascending()
            ]).asStream();
    }
  }
}
