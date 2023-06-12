import 'package:fieldscan/src/constants/providers/current_module.dart';
import 'package:fieldscan/src/constants/providers/router_tab_bar_notifier.dart';
import 'package:fieldscan/src/features/inspection/pages/schedule_tab/add_to_schedule_page/completed_view.dart';
import 'package:fieldscan/src/features/inspection/pages/schedule_tab/add_to_schedule_page/in_progress_view.dart';
import 'package:fieldscan/src/features/inspection/pages/schedule_tab/add_to_schedule_page/not_started_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const List<Tab> addToScheduleTabs = <Tab>[
  Tab(text: _inProgressDisplay),
  Tab(text: _notYetStartedDisplay),
  Tab(text: _completedDisplay)
];

const String _completedDisplay = 'Completed';
const String _inProgressDisplay = 'In Progress';
const String _notYetStartedDisplay = 'Not Yet Started';

class AddToSchedulePage extends ConsumerWidget {
  const AddToSchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () async {
        ref.watch(routerTabBarProvider.notifier).setIsVisable(true);
        return true;
      },
      child: DefaultTabController(
        length: addToScheduleTabs.length,
        // The Builder widget is used to have a different BuildContext to access
        // closest DefaultTabController.
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              // Your code goes here.
              // To get index of current tab use tabController.index
            }
          });
          return Scaffold(
            appBar: AppBar(
              title: const Text("Add To Schedule"),
              bottom: const TabBar(
                tabs: addToScheduleTabs,
              ),
            ),
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: addToScheduleTabs.map((Tab tab) {
                return getTabWidget(ref, tab.text!);
              }).toList(),
            ),
          );
        }),
      ),
    );
  }

  Widget getTabWidget(WidgetRef ref, String text) {
    switch (text) {
      case _inProgressDisplay:
        return InProgressView(appModule: ref.watch(currentModuleProvider));
      case _notYetStartedDisplay:
        return NotStartedView(appModule: ref.watch(currentModuleProvider));
      case _completedDisplay:
        return CompletedView(appModule: ref.watch(currentModuleProvider));
      default:
        return const Center(child: Text('Not Found'));
    }
  }
}
