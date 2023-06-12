import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/amplifyconfiguration.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/configuration/theme/light_theme_provider.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/constants/global_keys.dart';
import 'package:fieldscan/src/features/authentication/sign_in_page.dart';
import 'package:fieldscan/src/features/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    try {
      await Amplify.addPlugin(
          AmplifyAPI(modelProvider: ModelProvider.instance));
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.addPlugin(
          AmplifyDataStore(modelProvider: ModelProvider.instance));
      await Amplify.configure(amplifyconfig);
      safePrint('Successfully configured Amplify Cognito');
    } on Exception catch (e) {
      safePrint('Error configuring Amplify: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
        authenticatorBuilder: (context, state) {
          switch (state.currentStep) {
            case AuthenticatorStep.signIn:
              return const SignInScreen();
            default:
              return null;
          }
        },
        child: MaterialApp(
          navigatorKey: mainNavigatorKey,
          theme: ref.read(lightThemeColorProvider(AppModule.main)),
          builder: Authenticator.builder(),
          home: const HomePage(),
        ));
  }
}
