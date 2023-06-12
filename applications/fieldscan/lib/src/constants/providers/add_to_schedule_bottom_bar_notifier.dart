import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddToScheduleBottomBarNotifier extends StateNotifier<bool> {
  AddToScheduleBottomBarNotifier() : super(false);
  isVisable(bool visable) => state = visable;
}

final addToScheduleBottomBarProvider =
    StateNotifierProvider<AddToScheduleBottomBarNotifier, bool>(
        (ref) => AddToScheduleBottomBarNotifier());
