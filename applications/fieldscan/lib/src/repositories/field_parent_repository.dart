import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fieldParentRepository = Provider.autoDispose<FieldParentRepository>(
    (ref) => FieldParentRepositoryImpl());

class FieldParentCreateObject {
  final String fieldName;
  final String fieldNumberBase;
  final String county;
  final bool isOrganic;
  final GeoPointObject mapCenterPoint;
  final PlssLocationObject plssLocation;
  final UsStateKey state;
  final CountryKey country;
  final int mapZoom;
  FieldParentCreateObject(
      this.fieldName,
      this.fieldNumberBase,
      this.county,
      this.isOrganic,
      this.mapCenterPoint,
      this.plssLocation,
      this.state,
      this.country,
      this.mapZoom);
}

abstract class FieldParentRepository {
  Future<void> create(FieldParentCreateObject object);
}

class FieldParentRepositoryImpl implements FieldParentRepository {
  FieldParentRepositoryImpl();

  @override
  Future<void> create(FieldParentCreateObject object) async {
    var doc = FieldParent(
        country: object.country,
        county: object.county,
        fieldName: object.fieldName,
        fieldNumberBase: object.fieldNumberBase,
        isOrganic: object.isOrganic,
        mapCenterPoint: object.mapCenterPoint,
        mapCenterZoom: object.mapZoom,
        plssLocation: object.plssLocation,
        state: object.state);
    await Amplify.DataStore.save(doc);
  }
}
