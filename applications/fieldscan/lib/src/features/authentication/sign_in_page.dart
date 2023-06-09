import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:dsp_core/dsp_core.dart';
import 'package:fieldscan/src/configuration/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // DSP Logo
            SizedBox(
              width: 200,
              height: 200,
              child: ref.watch(dspLogoWhiteBG300x300ImageProvider),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text('FieldScan', style: textTheme.displaySmall),
            ),
            // prebuilt sign in form from amplify_authenticator package
            SignInForm(),
          ],
        ),
      ),
    );
  }
}
