import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentModuleNotifier extends StateNotifier<AppModule> {
  CurrentModuleNotifier() : super(AppModule.main);
  currentModule(AppModule moduleType) => state = moduleType;
}

final currentModuleProvider =
    StateNotifierProvider<CurrentModuleNotifier, AppModule>(
        (ref) => CurrentModuleNotifier());
