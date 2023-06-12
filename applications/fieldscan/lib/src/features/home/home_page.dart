import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/src/features/side_menu/side_menu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: const SideMenu(),
      body: Center(
          child: ElevatedButton(
        onPressed: () async {
          /*
          *****INSERT UPLOAD CALLS*****
          */
          var profile = await Amplify.Auth.fetchUserAttributes();
          var user = await Amplify.Auth.getCurrentUser();
          if (kDebugMode) {
            print(user.userId);
            print(user.username);
            print(user.signInDetails.toJson()['username']);
            print(user.signInDetails);
            print(profile);
          }
        },
        child: const Text('Get User Info'),
      )),
    );
  }
}
