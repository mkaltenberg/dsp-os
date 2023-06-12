import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fieldParentRepository = Provider.autoDispose<FieldParentRepository>(
    (ref) => FieldParentRepositoryImpl());

class FieldParentCreateObject {
  final String fieldName;
  final String fieldNumberBase;
  final CountryKey country;
  final StateOrProvinceKey stateOrProvince;
  final PlssLocationObject plssLocationObject;
  final GeoPointObject mapCenterPoint;
  final int mapCenterZoom;
  final String county;
  final bool isOrganic;
  final String seasonName;
  FieldParentCreateObject(
      this.fieldName,
      this.fieldNumberBase,
      this.country,
      this.stateOrProvince,
      this.plssLocationObject,
      this.mapCenterPoint,
      this.mapCenterZoom,
      this.county,
      this.isOrganic,
      this.seasonName);
}

abstract class FieldParentRepository {
  Future<void> create(FieldParentCreateObject object);
  Future<FieldParent?> getDocByID(String docID);
}

class FieldParentRepositoryImpl implements FieldParentRepository {
  FieldParentRepositoryImpl();

  @override
  Future<void> create(FieldParentCreateObject object) async {
    var seasonDoc = await Amplify.DataStore.query(Season.classType,
        where: Season.NAME.eq(object.seasonName));

    final item = FieldParent(
        fieldName: object.fieldName,
        fieldNumberBase: object.fieldNumberBase,
        country: object.country,
        stateOrProvince: object.stateOrProvince,
        plssLocation: object.plssLocationObject,
        mapCenterPoint: object.mapCenterPoint,
        mapCenterZoom: object.mapCenterZoom,
        county: object.county,
        isOrganic: object.isOrganic,
        seasonID: seasonDoc.first.id,
        FieldChildren: const []);
    await Amplify.DataStore.save(item);
  }

  @override
  Future<FieldParent?> getDocByID(String docID) async {
    var docs = await Amplify.DataStore.query(FieldParent.classType,
        where: FieldParent.ID.eq(docID));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }
}
