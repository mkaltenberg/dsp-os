import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:dsp_core/dsp_core.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/constants/global_keys.dart';
import 'package:fieldscan/src/constants/providers/current_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SideMenu extends ConsumerStatefulWidget {
  const SideMenu({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SideMenuState();
}

class _SideMenuState extends ConsumerState<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return const Drawer(
        child: Column(children: [
      SideMenuHeader(),
      SideMenuBody([
        ModuleCard(appModule: AppModule.main),
        ModuleCard(appModule: AppModule.fields),
        //ModuleCard(appModule: AppModule.scouting),
        ModuleCard(appModule: AppModule.populations),
        ModuleCard(appModule: AppModule.leafToTassel),
        ModuleCard(appModule: AppModule.detasseling),
      ]),
      SideMenuInfoBar(),
      SideMenuFooter()
    ]));
  }
}

class SideMenuFooter extends ConsumerWidget {
  const SideMenuFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> signOutCurrentUser() async {
      final result = await Amplify.Auth.signOut();
      if (result is CognitoCompleteSignOut) {
        safePrint('Sign out completed successfully');
      } else if (result is CognitoFailedSignOut) {
        safePrint('Error signing user out: ${result.exception.message}');
      }
    }

    return SizedBox(
        height: 100,
        child: Container(
          color: ref.read(AppModule.main.colorScheme).primary,
          child: Center(
              child: TextButton(
            child: const Text(
              'Sign Out',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700),
            ),
            onPressed: () {
              ref
                  .read(currentModuleProvider.notifier)
                  .currentModule(AppModule.fields);
              signOutCurrentUser();
            },
          )),
        ));
  }
}

class SideMenuInfoBar extends ConsumerStatefulWidget {
  const SideMenuInfoBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SideMenuInfoBarState();
}

class _SideMenuInfoBarState extends ConsumerState<SideMenuInfoBar> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
  );

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 30,
        child: Container(
            color: Colors.grey.shade800,
            child: Center(
                child: Text(
              'v:${_packageInfo.version}+${_packageInfo.buildNumber}',
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ))));
  }
}

class SideMenuHeader extends ConsumerWidget {
  const SideMenuHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextStyle getHeaderTextStyle() {
      return const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 24.0,
          shadows: <Shadow>[Shadow(color: Colors.black, blurRadius: 3.0)]);
    }

    return SizedBox(
        height: 120,
        child: Container(
            color: ref.read(AppModule.main.colorScheme).primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 65,
                      width: 65,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: ref.watch(dspLogoWhiteBG300x300ImageProvider),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: Text(
                        'Navigation',
                        style: getHeaderTextStyle(),
                      ),
                    )
                  ],
                ),
              ],
            )));
  }
}

class SideMenuBody extends ConsumerWidget {
  const SideMenuBody(this.cards, {super.key});

  final List<ModuleCard> cards;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(child: ListView(children: cards));
  }
}

class ModuleCard extends ConsumerWidget {
  const ModuleCard({super.key, required this.appModule});

  final AppModule appModule;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppModule currentModule = ref.read(currentModuleProvider);
    return Card(
      elevation: 5,
      child: ListTile(
        leading: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              color: ref.read(appModule.colorScheme).primary,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  color: Colors.black, width: 2, style: BorderStyle.solid)),
        ),
        title: Text(
          appModule.appBarTitle,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        onTap: () {
          if (currentModule != appModule) {
            ref.read(currentModuleProvider.notifier).currentModule(appModule);
            mainNavigatorKey.currentState?.pushReplacement(
                MaterialPageRoute(builder: (context) => appModule.entryRouter));
          } else {
            mainNavigatorKey.currentState?.pop();
          }
        },
      ),
    );
  }
}
