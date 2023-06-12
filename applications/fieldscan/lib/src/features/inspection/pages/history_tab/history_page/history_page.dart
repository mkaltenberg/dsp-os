import 'package:fieldscan/src/features/inspection/pages/history_tab/history_page/history_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HistoryPage extends ConsumerWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [
      AppBar(title: const Text('History')),
      const Expanded(child: HistoryListView())
    ]);
  }
}
