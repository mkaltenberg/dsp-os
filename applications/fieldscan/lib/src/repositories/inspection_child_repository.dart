import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final inspectionChildRepository =
    Provider.autoDispose<InspectionChildRepository>(
        (ref) => InspectionChildRepositoryImpl());

class InspectionChildCreateObject {
  final GeoPointObject location;
  final String seasonID;
  final DetasselingSeedCornStandardInspectionFormDataObject?
      detasselingStandardSeedCornFormObject;
  final PopulationsStandardSeedCornInspectionFormDataObject?
      populationsStandardSeedCornFormObject;
  final ScoutingStandardSeedCornInspectionFormDataObject?
      scoutingStandardSeedCornFormObject;
  final LeafToTasselSeedCornStandardInspectionFormDataObject?
      leafToTasselStandardSeedCornFormObject;
  final String inspectionParentID;
  final String? comments;

  InspectionChildCreateObject(
      this.location,
      this.seasonID,
      this.detasselingStandardSeedCornFormObject,
      this.populationsStandardSeedCornFormObject,
      this.scoutingStandardSeedCornFormObject,
      this.leafToTasselStandardSeedCornFormObject,
      this.inspectionParentID,
      this.comments);
}

abstract class InspectionChildRepository {
  Future<void> create(InspectionChildCreateObject object);
  Future<InspectionChild?> getDocByID(String docID);
  Stream<List<InspectionChild>> inspectionChildStreamByInspectionParent(
      String inspectionParentID);
}

class InspectionChildRepositoryImpl implements InspectionChildRepository {
  InspectionChildRepositoryImpl();

  @override
  Future<void> create(InspectionChildCreateObject object) async {
    var currentUserProfile = await Amplify.Auth.fetchUserAttributes();

    String getUserEmail() {
      for (var attribute in currentUserProfile) {
        if (attribute.userAttributeKey.key == 'email') {
          return attribute.value;
        }
      }
      return '';
    }

    String getUserFirstName() {
      for (var attribute in currentUserProfile) {
        if (attribute.userAttributeKey.key == 'given_name') {
          return attribute.value;
        }
      }
      return '';
    }

    String getUserLastName() {
      for (var attribute in currentUserProfile) {
        if (attribute.userAttributeKey.key == 'family_name') {
          return attribute.value;
        }
      }
      return '';
    }

    final item = InspectionChild(
        location: object.location,
        seasonID: object.seasonID,
        detasselingStandardSeedCornFormObject:
            object.detasselingStandardSeedCornFormObject,
        populationsStandardSeedCornFormObject:
            object.populationsStandardSeedCornFormObject,
        scoutingStandardSeedCornFormObject:
            object.scoutingStandardSeedCornFormObject,
        leafToTasselStandardSeedCornFormObject:
            object.leafToTasselStandardSeedCornFormObject,
        inspectionParentID: object.inspectionParentID,
        userEmail: getUserEmail(),
        userFirstName: getUserFirstName(),
        userLastName: getUserLastName(),
        date: TemporalDate.now(),
        time: TemporalTime.now());
    await Amplify.DataStore.save(item);
  }

  @override
  Future<InspectionChild?> getDocByID(String docID) async {
    var docs = await Amplify.DataStore.query(InspectionChild.classType,
        where: InspectionChild.ID.eq(docID));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }

  @override
  Stream<List<InspectionChild>> inspectionChildStreamByInspectionParent(
      String inspectionParentID) {
    Stream<List<InspectionChild>> stream = Amplify.DataStore.query(
        InspectionChild.classType,
        where: InspectionChild.INSPECTIONPARENTID.eq(inspectionParentID),
        sortBy: [
          InspectionChild.DATE.descending(),
          InspectionChild.TIME.descending()
        ]).asStream();
    return stream;
  }
}
