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

  MaleInbredCreateObject(this.name, this.antherColor, this.glumeColor,
      this.silkColor, this.huTo50Pollen);
}

abstract class MaleInbredRepository {
  Future<void> create(MaleInbredCreateObject object);
}

class MaleInbredRepositoryImpl implements MaleInbredRepository {
  MaleInbredRepositoryImpl();

  @override
  Future<void> create(MaleInbredCreateObject object) async {
    var doc = MaleInbred(
        name: object.name,
        antherColor: object.antherColor,
        glumeColor: object.glumeColor,
        silkColor: object.silkColor,
        huTo50Pollen: object.huTo50Pollen);
    await Amplify.DataStore.save(doc);
  }
}
