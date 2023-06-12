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
  final String seasonName;

  CropDamageOptionCreateObject(this.category, this.applicableCropTypes,
      this.name, this.description, this.seasonName);
}

abstract class CropDamageOptionRepository {
  Future<void> create(CropDamageOptionCreateObject object);
  Future<CropDamageOption?> getDocByID(String docID);
}

class CropDamageOptionRepositoryImpl implements CropDamageOptionRepository {
  CropDamageOptionRepositoryImpl();

  @override
  Future<void> create(CropDamageOptionCreateObject object) async {
    var seasonDoc = await Amplify.DataStore.query(Season.classType,
        where: Season.NAME.eq(object.seasonName));

    var doc = CropDamageOption(
        category: object.category,
        applicableCropTypes: object.applicableCropTypes,
        name: object.name,
        description: object.description,
        seasonID: seasonDoc.first.id);
    await Amplify.DataStore.save(doc);
  }

  @override
  Future<CropDamageOption?> getDocByID(String docID) async {
    var docs = await Amplify.DataStore.query(CropDamageOption.classType,
        where: CropDamageOption.ID.eq(docID));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }
}
