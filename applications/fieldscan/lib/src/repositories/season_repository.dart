import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seasonRepository =
    Provider.autoDispose<SeasonRepository>((ref) => SeasonRepositoryImpl());

class SeasonCreateObject {
  final String name;
  final String? description;

  SeasonCreateObject(this.name, this.description);
}

abstract class SeasonRepository {
  Future<void> create(SeasonCreateObject object);
  Future<Season?> getDocByID(String docID);
  Future<Season?> getDocByName(String name);
}

class SeasonRepositoryImpl implements SeasonRepository {
  SeasonRepositoryImpl();

  @override
  Future<void> create(SeasonCreateObject object) async {
    final item = Season(name: object.name, description: object.description);
    await Amplify.DataStore.save(item);
  }

  @override
  Future<Season?> getDocByID(String docID) async {
    var docs = await Amplify.DataStore.query(Season.classType,
        where: Season.ID.eq(docID));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }

  @override
  Future<Season?> getDocByName(String name) async {
    var docs = await Amplify.DataStore.query(Season.classType,
        where: Season.NAME.eq(name));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }
}
