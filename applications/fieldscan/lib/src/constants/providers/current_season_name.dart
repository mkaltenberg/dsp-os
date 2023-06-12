import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentSeasonNameNotifier extends StateNotifier<String> {
  CurrentSeasonNameNotifier() : super('2023');
  currentSeason(String name) => state = name;
}

final currentSeasonNameProvider =
    StateNotifierProvider<CurrentSeasonNameNotifier, String>(
        (ref) => CurrentSeasonNameNotifier());

final currentSeasonProvider = FutureProvider<Season>((ref) async {
  final season = (await Amplify.DataStore.query(
    Season.classType,
    where: Season.NAME.eq(ref.watch(currentSeasonNameProvider)),
  ))[0];
  return season;
});
