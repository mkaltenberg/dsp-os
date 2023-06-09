import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splitPlantingTypeRepository =
    Provider.autoDispose<SplitPlantingTypeRepository>(
        (ref) => SplitPlantingTypeRepositoryImpl());

class SplitPlantingTypeCreateObject {
  final String name;
  final int numberOfPlantings;
  final List<PlantingDescriptionObject> plantingDescriptions;

  SplitPlantingTypeCreateObject(
      this.name, this.numberOfPlantings, this.plantingDescriptions);
}

abstract class SplitPlantingTypeRepository {
  Future<void> createSplitPlantingType(SplitPlantingTypeCreateObject object);
}

class SplitPlantingTypeRepositoryImpl implements SplitPlantingTypeRepository {
  SplitPlantingTypeRepositoryImpl();

  @override
  Future<void> createSplitPlantingType(
      SplitPlantingTypeCreateObject object) async {
    var doc = SplitPlantingType(
        name: object.name,
        numberOfPlantings: object.numberOfPlantings,
        plantingDescriptions: object.plantingDescriptions);
    await Amplify.DataStore.save(doc);
  }
}
