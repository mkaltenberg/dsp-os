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

  FemaleInbredCreateObject(this.name, this.antherColor, this.glumeColor,
      this.silkColor, this.huTo50Silk);
}

abstract class FemaleInbredRepository {
  Future<void> create(FemaleInbredCreateObject object);
}

class FemaleInbredRepositoryImpl implements FemaleInbredRepository {
  FemaleInbredRepositoryImpl();

  @override
  Future<void> create(FemaleInbredCreateObject object) async {
    var doc = FemaleInbred(
        name: object.name,
        antherColor: object.antherColor,
        glumeColor: object.glumeColor,
        silkColor: object.silkColor,
        huTo50Silk: object.huTo50Silk);
    await Amplify.DataStore.save(doc);
  }
}
