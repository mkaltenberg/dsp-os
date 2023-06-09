import 'package:fieldscan/src/features/fields/pages/hybrids_tab/hybrid_detail_page.dart';
import 'package:fieldscan/src/features/fields/pages/hybrids_tab/hybrids_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HybridsTabNavigator extends ConsumerStatefulWidget {
  const HybridsTabNavigator({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HybridsTabNavigatorState();
}

class _HybridsTabNavigatorState extends ConsumerState<HybridsTabNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return const HybridsListPage();
                case '/detail':
                  return const HybridDetailPage();
              }
              return const HybridsListPage();
            });
      },
    );
  }
}
