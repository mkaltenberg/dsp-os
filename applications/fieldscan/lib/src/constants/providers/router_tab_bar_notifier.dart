import 'package:flutter_riverpod/flutter_riverpod.dart';

class RouterTabBarHeightNotifier extends StateNotifier<double> {
  RouterTabBarHeightNotifier() : super(56.0);
  setIsVisable(bool isVisable) => state = isVisable ? 56.0 : 0.0;
}

final routerTabBarProvider =
    StateNotifierProvider<RouterTabBarHeightNotifier, double>(
        (ref) => RouterTabBarHeightNotifier());
