import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final femaleInbredRepository = Provider.autoDispose<FemaleInbredRepository>(
    (ref) => FemaleInbredRepositoryImpl());

class FemaleInbredCreateObject {
  final String name;
  final String? antherColor;
  final String? glumeColor;
  final String? silkColor;
  final int huTo50Silk;
  final String seasonName;

  FemaleInbredCreateObject(this.name, this.antherColor, this.glumeColor,
      this.silkColor, this.huTo50Silk, this.seasonName);
}

abstract class FemaleInbredRepository {
  Future<void> create(FemaleInbredCreateObject object);
  Future<FemaleInbred?> getDocByID(String docID);
}

class FemaleInbredRepositoryImpl implements FemaleInbredRepository {
  FemaleInbredRepositoryImpl();

  @override
  Future<void> create(FemaleInbredCreateObject object) async {
    var seasonDoc = await Amplify.DataStore.query(Season.classType,
        where: Season.NAME.eq(object.seasonName));

    var doc = FemaleInbred(
        name: object.name,
        antherColor: object.antherColor,
        glumeColor: object.glumeColor,
        silkColor: object.silkColor,
        huTo50Silk: object.huTo50Silk,
        seasonID: seasonDoc.first.id);
    await Amplify.DataStore.save(doc);
  }

  @override
  Future<FemaleInbred?> getDocByID(String docID) async {
    var docs = await Amplify.DataStore.query(FemaleInbred.classType,
        where: FemaleInbred.ID.eq(docID));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }
}
