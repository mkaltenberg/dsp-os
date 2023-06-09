import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cropDamageOptionRepository =
    Provider.autoDispose<CropDamageOptionRepository>(
        (ref) => CropDamageOptionRepositoryImpl());

class CropDamageOptionCreateObject {
  final CropDamageCategoryKey category;
  final List<CropTypeKey> applicableCropTypes;
  final String name;
  final String? description;

  CropDamageOptionCreateObject(
      this.category, this.applicableCropTypes, this.name, this.description);
}

abstract class CropDamageOptionRepository {
  Future<void> create(CropDamageOptionCreateObject object);
}

class CropDamageOptionRepositoryImpl implements CropDamageOptionRepository {
  CropDamageOptionRepositoryImpl();

  @override
  Future<void> create(CropDamageOptionCreateObject object) async {
    var doc = CropDamageOption(
        category: object.category,
        applicableCropTypes: object.applicableCropTypes,
        name: object.name,
        description: object.description);
    await Amplify.DataStore.save(doc);
  }
}
