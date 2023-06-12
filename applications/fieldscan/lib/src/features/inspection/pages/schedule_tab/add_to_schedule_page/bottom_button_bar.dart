import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/constants/providers/add_to_schedule_bottom_bar_notifier.dart';
import 'package:fieldscan/src/constants/providers/current_module.dart';
import 'package:fieldscan/src/constants/providers/current_season_name.dart';
import 'package:fieldscan/src/repositories/inspection_parent_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomButtonBar extends ConsumerStatefulWidget {
  const BottomButtonBar({
    Key? key,
    required this.ref,
    required this.appModule,
    required this.bottomPadding,
    required List<String> checked,
    required this.onAddInspectionsCompleted,
  })  : _checked = checked,
        super(key: key);

  final WidgetRef ref;
  final AppModule appModule;
  final List<String> _checked;
  final double bottomPadding;
  final VoidCallback onAddInspectionsCompleted;
  @override
  BottomButtonBarState createState() => BottomButtonBarState();
}

class BottomButtonBarState extends ConsumerState<BottomButtonBar> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<Season> season = ref.watch(currentSeasonProvider);
    return season.when(
        loading: () => const CircularProgressIndicator(),
        error: (error, stackTrace) => Text('Error: $error'),
        data: (season) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: ref.watch(addToScheduleBottomBarProvider) ? 80.0 : 0,
            child: Container(
                color: getModuleColor(),
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        if (widget._checked.isNotEmpty) {
                          for (var documentId in widget._checked) {
                            FieldInspectionModuleKey? currentModule =
                                widget.appModule.fieldInspectionModuleKey;

                            switch (currentModule) {
                              case FieldInspectionModuleKey.DETASSELING:
                                ref.read(inspectionParentRepository).create(
                                    InspectionParentCreateObject(
                                        season.id,
                                        documentId,
                                        InspectionFormTypeKey
                                            .DETASSELING_SEED_CORN_STANDARD,
                                        FieldInspectionModuleKey.DETASSELING),
                                    ref);
                              case FieldInspectionModuleKey.LEAF_TO_TASSEL:
                                ref.read(inspectionParentRepository).create(
                                    InspectionParentCreateObject(
                                        season.id,
                                        documentId,
                                        InspectionFormTypeKey
                                            .LEAF_TO_TASSEL_SEED_CORN_STANDARD,
                                        FieldInspectionModuleKey
                                            .LEAF_TO_TASSEL),
                                    ref);
                              case FieldInspectionModuleKey.POPULATIONS:
                                ref.read(inspectionParentRepository).create(
                                    InspectionParentCreateObject(
                                        season.id,
                                        documentId,
                                        InspectionFormTypeKey
                                            .POPULATIONS_SEED_CORN_STANDARD,
                                        FieldInspectionModuleKey.POPULATIONS),
                                    ref);
                              case FieldInspectionModuleKey.SCOUTING:
                                ref.read(inspectionParentRepository).create(
                                    InspectionParentCreateObject(
                                        season.id,
                                        documentId,
                                        InspectionFormTypeKey
                                            .SCOUTING_SEED_CORN_STANDARD,
                                        FieldInspectionModuleKey.SCOUTING),
                                    ref);
                              default:
                                break;
                            }
                          }
                          widget.onAddInspectionsCompleted();
                        }
                      },
                      child: const Text(
                        'Add To Schedule',
                        style: TextStyle(color: Colors.white),
                      )),
                )),
          );
        });
  }

  Color? getModuleColor() {
    switch (ref.read(currentModuleProvider)) {
      case AppModule.fields:
        return ref.read(AppModule.fields.colorScheme).primary;
      case AppModule.leafToTassel:
        return ref.read(AppModule.leafToTassel.colorScheme).primary;
      case AppModule.detasseling:
        return ref.read(AppModule.detasseling.colorScheme).primary;
      case AppModule.populations:
        return ref.read(AppModule.populations.colorScheme).primary;
      case AppModule.scouting:
      //TODO: Implement Scouting Module
      case AppModule.main:
        return null;
    }
  }
}
