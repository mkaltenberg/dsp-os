import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/constants/providers/add_to_schedule_bottom_bar_notifier.dart';
import 'package:fieldscan/src/constants/providers/current_season_name.dart';
import 'package:fieldscan/src/features/inspection/pages/schedule_tab/add_to_schedule_page/bottom_button_bar.dart';
import 'package:fieldscan/src/features/inspection/pages/schedule_tab/add_to_schedule_page/in_progress_list_view.dart';
import 'package:fieldscan/src/repositories/field_child_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InProgressView extends ConsumerStatefulWidget {
  final AppModule appModule;
  const InProgressView({Key? key, required this.appModule}) : super(key: key);

  @override
  InProgressViewState createState() => InProgressViewState();
}

class InProgressViewState extends ConsumerState<InProgressView> {
  final List<String> _checked = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    AsyncValue<Season> season = ref.watch(currentSeasonProvider);

    return season.when(
        loading: () => const CircularProgressIndicator(),
        error: (error, stackTrace) => Text('Error: $error'),
        data: (season) {
          Stream<List<FieldChild>> fieldChildStream = ref
              .read(fieldChildRepository)
              .getStreamByInspectionStatusKeySortedByMostRecentInspection(
                  season.id,
                  InspectionStatusKey.IN_PROGRESS,
                  widget.appModule.fieldInspectionModuleKey!);

          return StreamBuilder<List<FieldChild>>(
            stream: fieldChildStream,
            builder: (context, children) {
              if (children.hasError) {
                if (kDebugMode) {
                  print(children.error.toString());
                }

                return Text(children.error.toString());
              }

              if (children.connectionState == ConnectionState.waiting) {
                return const Center(
                    widthFactor: 50.0,
                    heightFactor: 50.0,
                    child: CircularProgressIndicator());
              }

              if (!children.hasData) {
                return const Center(
                    widthFactor: 50.0,
                    heightFactor: 50.0,
                    child: CircularProgressIndicator());
              }

              return Column(
                children: [
                  Expanded(
                      child: InProgressListView(
                          appModule: widget.appModule,
                          checked: _checked,
                          children: children.data!)),
                  BottomButtonBar(
                    ref: ref,
                    appModule: widget.appModule,
                    checked: _checked,
                    bottomPadding: MediaQuery.of(context).padding.bottom,
                    onAddInspectionsCompleted: () {
                      _checked.clear();
                      ref
                          .watch(addToScheduleBottomBarProvider.notifier)
                          .isVisable(false);
                      setState(() {});
                    },
                  )
                ],
              );
            },
          );
        });
  }
}
