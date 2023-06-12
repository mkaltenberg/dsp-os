import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/constants/providers/current_module.dart';
import 'package:fieldscan/src/features/inspection/pages/history_tab/history_page/populations_standard_card.dart';
import 'package:fieldscan/src/features/inspection/pages/history_tab/history_page/scouting_standard_card.dart';
import 'package:fieldscan/src/repositories/inspection_parent_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import 'detasseling_standard_card.dart';
import 'leaf_to_tassel_standard_card.dart';

class HistoryListView extends ConsumerStatefulWidget {
  const HistoryListView({Key? key}) : super(key: key);

  @override
  HistoryListViewState createState() => HistoryListViewState();
}

class HistoryListViewState extends ConsumerState<HistoryListView> {
  FieldInspectionModuleKey? getCurrentInspectionType() {
    return ref.watch(currentModuleProvider).fieldInspectionModuleKey;
  }

  @override
  Widget build(BuildContext context) {
    final Stream<List<InspectionParent>> inspectionParentStream = ref
        .read(inspectionParentRepository)
        .inspectionParentStreamByInspectionModule(getCurrentInspectionType());

    return StreamBuilder<List<InspectionParent>>(
      stream: inspectionParentStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          if (kDebugMode) {
            print(snapshot.error.toString());
          }
          return Text(snapshot.error.toString());
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
              widthFactor: 50.0,
              heightFactor: 50.0,
              child: CircularProgressIndicator());
        }

        if (!snapshot.hasData) {
          return const Center(child: Text('No Data'));
        }

        return GroupedListView(
            padding: const EdgeInsets.all(0),
            elements: snapshot.data!,
            groupBy: (element) => (element.completionStatus),
            groupHeaderBuilder: (element) => Container(
                height: 50,
                color: Colors.grey.shade700,
                child: Center(
                    child: Text(
                  element.scheduledDate.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ))),
            order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            itemBuilder: (context, element) {
              switch (element.inspectionFormType) {
                case InspectionFormTypeKey.DETASSELING_SEED_CORN_STANDARD:
                  return DetasselingStandardCard(ref: ref, data: element);
                case InspectionFormTypeKey.LEAF_TO_TASSEL_SEED_CORN_STANDARD:
                  return LeafToTasselStandardCard(ref: ref, data: element);
                case InspectionFormTypeKey.SCOUTING_SEED_CORN_STANDARD:
                  return ScoutingStandardCard(ref: ref, data: element);
                case InspectionFormTypeKey.POPULATIONS_SEED_CORN_STANDARD:
                  return PopulationsStandardCard(ref: ref, data: element);
                default:
                  return Container();
              }
            });
      },
    );
  }
}
