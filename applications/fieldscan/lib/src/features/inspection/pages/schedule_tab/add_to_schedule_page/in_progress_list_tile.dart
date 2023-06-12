import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/constants/providers/add_to_schedule_bottom_bar_notifier.dart';
import 'package:fieldscan/src/constants/providers/current_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomCheckboxListTile extends ConsumerStatefulWidget {
  final String docId;

  const CustomCheckboxListTile({
    Key? key,
    required this.data,
    required this.docId,
    required List<String> checked,
  })  : _checked = checked,
        super(key: key);

  final FieldChild data;
  final List<String> _checked;

  @override
  CustomCheckboxListTileState createState() => CustomCheckboxListTileState();
}

class CustomCheckboxListTileState
    extends ConsumerState<CustomCheckboxListTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                      child: Text(
                        widget.data.fieldName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                          child: Text(
                            widget.data.fieldNumber,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                          child: Text(
                            widget.data.hybridName,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                          child: Text(
                            'Last Inspection:',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 8, 4),
                          child: Text(
                            getMostRecentCompletionDate(
                                    ref
                                        .read(currentModuleProvider)
                                        .fieldInspectionModuleKey,
                                    widget.data) ??
                                '',
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Checkbox(
                value: widget._checked.contains(widget.docId),
                onChanged: (bool? value) {
                  bool shouldReloadBottomBar = false;
                  if (value == true) {
                    if (widget._checked.isEmpty) {
                      shouldReloadBottomBar = true;
                    }
                    if (!widget._checked.contains(widget.docId)) {
                      widget._checked.add(widget.docId);
                    }
                  } else if (value == false) {
                    if (widget._checked.contains(widget.docId)) {
                      widget._checked.remove(widget.docId);
                    }
                    if (widget._checked.isEmpty) {
                      shouldReloadBottomBar = true;
                    }
                  }

                  setState(() {
                    if (shouldReloadBottomBar) {
                      ref
                          .read(addToScheduleBottomBarProvider.notifier)
                          .isVisable(widget._checked.isNotEmpty);
                    }
                  });
                },
              )
            ],
          ),
        ));
  }

  String? getMostRecentCompletionDate(
      FieldInspectionModuleKey? moduleKey, FieldChild fieldChild) {
    switch (moduleKey) {
      case FieldInspectionModuleKey.DETASSELING:
        return fieldChild.detasselingStandardSeedCornMostRecentInspection;
      case FieldInspectionModuleKey.LEAF_TO_TASSEL:
        return fieldChild.leafToTasselStandardSeedCornMostRecentInspection;
      case FieldInspectionModuleKey.POPULATIONS:
        return fieldChild.populationsStandardSeedCornMostRecentInspection;
      case FieldInspectionModuleKey.SCOUTING:
        return fieldChild.scoutingStandardSeedCornMostRecentInspection;
      default:
        return '';
    }
  }
}
