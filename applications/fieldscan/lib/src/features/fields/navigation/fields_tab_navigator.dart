import 'package:fieldscan/src/features/fields/pages/fields_tab/field_detail_page.dart';
import 'package:fieldscan/src/features/fields/pages/fields_tab/fields_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FieldsTabNavigator extends ConsumerStatefulWidget {
  const FieldsTabNavigator({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FieldsTabNavigatorState();
}

class _FieldsTabNavigatorState extends ConsumerState<FieldsTabNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return const FieldsListPage();
                case '/detail':
                  return const FieldDetailPage();
              }
              return const FieldsListPage();
            });
      },
    );
  }
}
