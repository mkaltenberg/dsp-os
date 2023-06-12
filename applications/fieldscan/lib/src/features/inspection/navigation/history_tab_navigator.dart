import 'package:fieldscan/src/features/inspection/pages/history_tab/history_page/history_page.dart';
import 'package:flutter/material.dart';

class HistoryTabNavigator extends StatefulWidget {
  const HistoryTabNavigator({Key? key}) : super(key: key);

  @override
  HistoryTabNavigatorState createState() => HistoryTabNavigatorState();
}

class HistoryTabNavigatorState extends State<HistoryTabNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return const HistoryPage();
              }
              return const HistoryPage();
            });
      },
    );
  }
}
