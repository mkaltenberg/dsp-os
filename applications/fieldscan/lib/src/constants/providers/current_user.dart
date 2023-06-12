import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentUserProvider = FutureProvider<AuthUser>((ref) async {
  var user = await Amplify.Auth.getCurrentUser();
  return user;
});

final currentUserProfileProvider =
    FutureProvider<List<AuthUserAttribute>>((ref) async {
  var profile = await Amplify.Auth.fetchUserAttributes();
  return profile;
});
