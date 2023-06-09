import 'package:fieldscan/src/configuration/theme/light_theme_provider.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/features/side_menu/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'fields_tab_navigator.dart';
import 'hybrids_tab_navigator.dart';

class FieldsRouter extends ConsumerStatefulWidget {
  const FieldsRouter({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FieldsRouterState();
}

class _FieldsRouterState extends ConsumerState<FieldsRouter> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ref.read(lightThemeColorProvider(AppModule.fields)),
      child: Scaffold(
        drawer: const SideMenu(),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.list_alt),
                label: 'Fields',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list_alt),
                label: 'Hybrids',
              )
            ],
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            }),
        body: SafeArea(
          top: false,
          child: IndexedStack(
            index: _selectedIndex,
            children: const <Widget>[
              FieldsTabNavigator(),
              HybridsTabNavigator(),
            ],
          ),
        ),
      ),
    );
  }
}
