import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appUserProfileRepository = Provider.autoDispose<AppUserProfileRepository>(
    (ref) => AppUserProfileRepositoryImpl());

class AppUserProfileCreateObject {
  final String firstName;
  final String lastName;
  final String email;

  AppUserProfileCreateObject(this.firstName, this.lastName, this.email);
}

abstract class AppUserProfileRepository {
  Future<void> create(AppUserProfileCreateObject object);
  Future<AppUserProfile?> getDocByEmail(String email);
}

class AppUserProfileRepositoryImpl implements AppUserProfileRepository {
  AppUserProfileRepositoryImpl();

  @override
  Future<void> create(AppUserProfileCreateObject object) async {
    var doc = AppUserProfile(
        firstName: object.firstName,
        lastName: object.lastName,
        email: object.email);
    await Amplify.DataStore.save(doc);
  }

  @override
  Future<AppUserProfile?> getDocByEmail(String email) async {
    var docs = await Amplify.DataStore.query(AppUserProfile.classType,
        where: AppUserProfile.EMAIL.eq(email));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }
}
