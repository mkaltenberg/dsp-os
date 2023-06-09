import 'package:fieldscan/src/configuration/theme/color_schemes/detasseling.dart';
import 'package:fieldscan/src/configuration/theme/color_schemes/fields.dart';
import 'package:fieldscan/src/configuration/theme/color_schemes/leaf_to_tassel.dart';
import 'package:fieldscan/src/configuration/theme/color_schemes/main.dart';
import 'package:fieldscan/src/configuration/theme/color_schemes/populations.dart';
import 'package:fieldscan/src/configuration/theme/color_schemes/scouting.dart';
import 'package:fieldscan/src/features/fields/navigation/fields_router.dart';
import 'package:fieldscan/src/features/home/home_page.dart';
import 'package:fieldscan/src/features/inspection/navigation/inspection_module_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppModule {
  main,
  fields,
  detasseling,
  leafToTassel,
  populations,
  scouting
}

extension AppModuleExtension on AppModule {
  Widget get entryRouter {
    switch (this) {
      case AppModule.main:
        return const HomePage();
      case AppModule.fields:
        return const FieldsRouter();
      case AppModule.detasseling:
      case AppModule.leafToTassel:
      case AppModule.populations:
      case AppModule.scouting:
        return InspectionModuleRouter(appModule: this);
    }
  }

  String get snakeCaseName {
    switch (this) {
      case AppModule.main:
        return 'main';
      case AppModule.fields:
        return 'fields';
      case AppModule.detasseling:
        return 'detasseling';
      case AppModule.leafToTassel:
        return 'leaf_to_tassel';
      case AppModule.populations:
        return 'populations';
      case AppModule.scouting:
        return 'scouting';
    }
  }

  String get title {
    switch (this) {
      case AppModule.main:
        return "FieldScan";
      case AppModule.fields:
        return "Fields";
      case AppModule.detasseling:
        return "Detasseling";
      case AppModule.leafToTassel:
        return "Leaf to Tassel";
      case AppModule.populations:
        return "Populations";
      case AppModule.scouting:
        return "Scouting";
    }
  }

  String get appBarTitle {
    switch (this) {
      case AppModule.main:
        return "Home";
      case AppModule.fields:
        return "Fields";
      case AppModule.detasseling:
        return "Detasseling";
      case AppModule.leafToTassel:
        return "Leaf to Tassel";
      case AppModule.populations:
        return "Populations";
      case AppModule.scouting:
        return "Scouting";
    }
  }

  Provider<ColorScheme> get colorScheme {
    switch (this) {
      case AppModule.main:
        return mainColorSchemeProvider;
      case AppModule.fields:
        return fieldsColorSchemeProvider;
      case AppModule.detasseling:
        return detasselingColorSchemeProvider;
      case AppModule.leafToTassel:
        return leafToTasselColorSchemeProvider;
      case AppModule.populations:
        return populationsColorSchemeProvider;
      case AppModule.scouting:
        return scoutingColorSchemeProvider;
    }
  }
}
