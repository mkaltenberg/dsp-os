import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final maleInbredRepository = Provider.autoDispose<MaleInbredRepository>(
    (ref) => MaleInbredRepositoryImpl());

class MaleInbredCreateObject {
  final String name;
  final String? antherColor;
  final String? glumeColor;
  final String? silkColor;
  final int huTo50Pollen;
  final String seasonName;

  MaleInbredCreateObject(this.name, this.antherColor, this.glumeColor,
      this.silkColor, this.huTo50Pollen, this.seasonName);
}

abstract class MaleInbredRepository {
  Future<void> create(MaleInbredCreateObject object);
  Future<MaleInbred?> getDocByID(String docID);
}

class MaleInbredRepositoryImpl implements MaleInbredRepository {
  MaleInbredRepositoryImpl();

  @override
  Future<void> create(MaleInbredCreateObject object) async {
    var seasonDoc = await Amplify.DataStore.query(Season.classType,
        where: Season.NAME.eq(object.seasonName));

    var doc = MaleInbred(
        name: object.name,
        antherColor: object.antherColor,
        glumeColor: object.glumeColor,
        silkColor: object.silkColor,
        huTo50Pollen: object.huTo50Pollen,
        seasonID: seasonDoc.first.id);
    await Amplify.DataStore.save(doc);
  }

  @override
  Future<MaleInbred?> getDocByID(String docID) async {
    var docs = await Amplify.DataStore.query(MaleInbred.classType,
        where: MaleInbred.ID.eq(docID));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }
}
