import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final inspectionTypeRepository = Provider.autoDispose<InspectionTypeRepository>(
    (ref) => InspectionTypeRepositoryImpl());

class InspectionTypeCreateObject {
  final String title;
  final String? description;
  final FieldInspectionModuleKey inspectionModule;
  final CropTypeKey cropType;
  final bool isOrganic;
  final int defaultRequiredInspections;
  final InspectionFormTypeKey inspectionFormType;
  final String seasonName;

  InspectionTypeCreateObject(
      this.title,
      this.description,
      this.inspectionModule,
      this.cropType,
      this.isOrganic,
      this.defaultRequiredInspections,
      this.inspectionFormType,
      this.seasonName);
}

abstract class InspectionTypeRepository {
  Future<void> create(InspectionTypeCreateObject object);
  Future<InspectionType?> getDocByID(String docID);
  Future<InspectionType?> getDocBy(String seasonID,
      InspectionFormTypeKey inspectionFormType, bool isOrganic);
}

class InspectionTypeRepositoryImpl implements InspectionTypeRepository {
  InspectionTypeRepositoryImpl();

  @override
  Future<void> create(InspectionTypeCreateObject object) async {
    var seasonDoc = await Amplify.DataStore.query(Season.classType,
        where: Season.NAME.eq(object.seasonName));

    var doc = InspectionType(
        inspectionModule: object.inspectionModule,
        cropType: object.cropType,
        isOrganic: object.isOrganic,
        title: object.title,
        description: object.description,
        defaultRequiredInspections: object.defaultRequiredInspections,
        inspectionFormType: object.inspectionFormType,
        seasonID: seasonDoc.first.id);

    await Amplify.DataStore.save(doc);
  }

  @override
  Future<InspectionType?> getDocByID(String docID) async {
    var docs = await Amplify.DataStore.query(InspectionType.classType,
        where: InspectionType.ID.eq(docID));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }

  @override
  Future<InspectionType?> getDocBy(String seasonID,
      InspectionFormTypeKey inspectionFormType, bool isOrganic) async {
    var docs = await Amplify.DataStore.query(InspectionType.classType,
        where: InspectionType.SEASONID
            .eq(seasonID)
            .and(InspectionType.INSPECTIONFORMTYPE.eq(inspectionFormType))
            .and(InspectionType.ISORGANIC.eq(isOrganic)));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }
}
