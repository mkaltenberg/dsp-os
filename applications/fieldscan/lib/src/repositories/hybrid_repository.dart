import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final hybridRepository =
    Provider.autoDispose<HybridRepository>((ref) => HybridRepositoryImpl());

class HybridCreateObject {
  final String splitPlantingTypeName;
  final String maleInbredName;
  final String femaleInbredName;
  final String hybridName;
  final int femalePlantingNumber;
  final List<SplitPlantingObject> splitPlantings;

  HybridCreateObject(
      this.splitPlantingTypeName,
      this.maleInbredName,
      this.femaleInbredName,
      this.hybridName,
      this.femalePlantingNumber,
      this.splitPlantings);
}

abstract class HybridRepository {
  Future<void> create(HybridCreateObject object);
}

class HybridRepositoryImpl implements HybridRepository {
  HybridRepositoryImpl();

  @override
  Future<void> create(HybridCreateObject object) async {
    var maleInbredDoc = await Amplify.DataStore.query(MaleInbred.classType,
        where: MaleInbred.NAME.eq(object.maleInbredName));
    var femaleInbredDoc = await Amplify.DataStore.query(FemaleInbred.classType,
        where: FemaleInbred.NAME.eq(object.femaleInbredName));
    var splitPlantingTypeDoc = await Amplify.DataStore.query(
        SplitPlantingType.classType,
        where: SplitPlantingType.NAME.eq(object.splitPlantingTypeName));

    var doc = Hybrid(
        name: object.hybridName,
        femalePlantingNumber: object.femalePlantingNumber,
        splitPlantings: object.splitPlantings,
        splitPlantingTypeId: splitPlantingTypeDoc.first.id,
        maleInbredId: maleInbredDoc.first.id,
        femaleInbredId: femaleInbredDoc.first.id);
    await Amplify.DataStore.save(doc);
  }
}
