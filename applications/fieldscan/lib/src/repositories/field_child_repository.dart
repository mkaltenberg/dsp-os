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
  final double growerShare;
  final List<PlantingDateObject> plantingDates;
  final FieldAcresObject acresObject;

  FieldChildCreateObject(
      this.fieldParentName,
      this.fieldNumber,
      this.hybridName,
      this.seasonName,
      this.isCertified,
      this.growerName,
      this.growerShare,
      this.plantingDates,
      this.acresObject);
}

abstract class FieldChildRepository {
  Future<void> create(FieldChildCreateObject object);
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
        fieldParentId: fieldParentDoc.first.id,
        fieldName: fieldParentDoc.first.fieldName,
        fieldNumber: object.fieldNumber,
        hybridName: hybridDoc.first.name,
        seasonId: seasonDoc.first.id,
        hybridId: hybridDoc.first.id,
        isCertified: object.isCertified,
        growerShares: [
          GrowerShareObject(
              growerID: growerDoc.first.id, sharePercentage: object.growerShare)
        ],
        plantingDates: object.plantingDates,
        inspectionTypesIds: getInspectionTypeIds(),
        acres: object.acresObject);

    await Amplify.DataStore.save(doc);
  }
}
