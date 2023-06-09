import 'package:flutter_riverpod/flutter_riverpod.dart';

class RouterTabBarDrawerDraggableNotifier extends StateNotifier<bool> {
  RouterTabBarDrawerDraggableNotifier() : super(true);
  setCanDragToOpenDrawer(bool canDrag) => state = canDrag;
}

final routerTabBarDrawerDraggableProvider =
    StateNotifierProvider<RouterTabBarDrawerDraggableNotifier, bool>(
        (ref) => RouterTabBarDrawerDraggableNotifier());
