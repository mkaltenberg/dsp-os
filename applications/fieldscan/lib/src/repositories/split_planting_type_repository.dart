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
  final String seasonName;

  SplitPlantingTypeCreateObject(this.name, this.numberOfPlantings,
      this.plantingDescriptions, this.seasonName);
}

abstract class SplitPlantingTypeRepository {
  Future<void> createSplitPlantingType(SplitPlantingTypeCreateObject object);
  Future<SplitPlantingType?> getDocByID(String docID);
}

class SplitPlantingTypeRepositoryImpl implements SplitPlantingTypeRepository {
  SplitPlantingTypeRepositoryImpl();

  @override
  Future<void> createSplitPlantingType(
      SplitPlantingTypeCreateObject object) async {
    var seasonDoc = await Amplify.DataStore.query(Season.classType,
        where: Season.NAME.eq(object.seasonName));

    var doc = SplitPlantingType(
        name: object.name,
        numberOfPlantings: object.numberOfPlantings,
        plantingDescriptions: object.plantingDescriptions,
        seasonID: seasonDoc.first.id);
    await Amplify.DataStore.save(doc);
  }

  @override
  Future<SplitPlantingType?> getDocByID(String docID) async {
    var docs = await Amplify.DataStore.query(SplitPlantingType.classType,
        where: SplitPlantingType.ID.eq(docID));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }
}
