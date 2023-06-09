import 'package:fieldscan/src/features/inspection/pages/schedule_tab/add_to_schedule_page.dart';
import 'package:fieldscan/src/features/inspection/pages/schedule_tab/schedule_page.dart';
import 'package:flutter/material.dart';

class ScheduleTabNavigator extends StatefulWidget {
  const ScheduleTabNavigator({Key? key}) : super(key: key);

  @override
  ScheduleTabNavigatorState createState() => ScheduleTabNavigatorState();
}

class ScheduleTabNavigatorState extends State<ScheduleTabNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return const SchedulePage();
                case '/add_to_schedule':
                  return const AddToSchedulePage();
              }
              return const SchedulePage();
            });
      },
    );
  }
}
