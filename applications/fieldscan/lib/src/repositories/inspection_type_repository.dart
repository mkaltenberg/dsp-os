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

  InspectionTypeCreateObject(
      this.title,
      this.description,
      this.inspectionModule,
      this.cropType,
      this.isOrganic,
      this.defaultRequiredInspections,
      this.inspectionFormType);
}

abstract class InspectionTypeRepository {
  Future<void> create(InspectionTypeCreateObject object);
}

class InspectionTypeRepositoryImpl implements InspectionTypeRepository {
  InspectionTypeRepositoryImpl();

  @override
  Future<void> create(InspectionTypeCreateObject object) async {
    var doc = InspectionType(
        title: object.title,
        description: object.description,
        inspectionModule: object.inspectionModule,
        cropType: object.cropType,
        isOrganic: object.isOrganic,
        defaultRequiredInspections: object.defaultRequiredInspections,
        inspectionFormType: object.inspectionFormType);

    await Amplify.DataStore.save(doc);
  }
}
