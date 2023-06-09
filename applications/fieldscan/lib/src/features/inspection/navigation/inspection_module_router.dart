import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/constants/providers/router_tab_bar_draggable_notifier.dart';
import 'package:fieldscan/src/constants/providers/router_tab_bar_notifier.dart';
import 'package:fieldscan/src/features/inspection/navigation/history_tab_navigator.dart';
import 'package:fieldscan/src/features/inspection/navigation/schedule_tab_navigator.dart';
import 'package:fieldscan/src/features/side_menu/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InspectionModuleRouter extends ConsumerStatefulWidget {
  final AppModule appModule;

  const InspectionModuleRouter({Key? key, required this.appModule})
      : super(key: key);

  @override
  InspectionModuleRouterState createState() => InspectionModuleRouterState();
}

class InspectionModuleRouterState
    extends ConsumerState<InspectionModuleRouter> {
  @override
  void initState() {
    super.initState();
    ref.read(routerTabBarProvider);
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double tabBarHeight = ref.watch(routerTabBarProvider);
    bool drawerDraggable = ref.watch(routerTabBarDrawerDraggableProvider);
    return Theme(
      data: ThemeData(colorScheme: ref.read(widget.appModule.colorScheme)),
      child: Scaffold(
        drawer: const SideMenu(),
        drawerEnableOpenDragGesture: drawerDraggable,
        bottomNavigationBar: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: tabBarHeight == 0.0
                ? 0.0
                : MediaQuery.of(context).padding.bottom + tabBarHeight,
            child: Wrap(children: <Widget>[
              BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.list_alt),
                      label: 'History',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.list_alt),
                      label: 'Schedule',
                    )
                  ],
                  currentIndex: _selectedIndex,
                  onTap: (int index) {
                    setState(() {
                      _selectedIndex = index;
                      _selectedIndex == 0
                          ? ref
                              .read(
                                  routerTabBarDrawerDraggableProvider.notifier)
                              .setCanDragToOpenDrawer(true)
                          : ref
                              .read(
                                  routerTabBarDrawerDraggableProvider.notifier)
                              .setCanDragToOpenDrawer(false);
                    });
                  })
            ])),
        body: SafeArea(
          top: false,
          child: IndexedStack(
            index: _selectedIndex,
            children: const <Widget>[
              HistoryTabNavigator(),
              ScheduleTabNavigator(),
            ],
          ),
        ),
      ),
    );
  }
}
