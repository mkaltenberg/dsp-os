import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/constants/providers/current_user.dart';
import 'package:fieldscan/src/features/inspection/pages/schedule_tab/add_to_schedule_page/in_progress_list_tile.dart';
import 'package:fieldscan/src/repositories/app_user_profile_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class InProgressListView extends ConsumerStatefulWidget {
  const InProgressListView({
    Key? key,
    required this.appModule,
    required this.children,
    required List<String> checked,
  })  : _checked = checked,
        super(key: key);
  final AppModule appModule;
  final List<String> _checked;
  final List<FieldChild> children;

  @override
  InProgressListViewState createState() => InProgressListViewState();
}

class InProgressListViewState extends ConsumerState<InProgressListView> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<List<AuthUserAttribute>> userProfile =
        ref.watch(currentUserProfileProvider);
    return userProfile.when(
        loading: () => const CircularProgressIndicator(),
        error: (error, stackTrace) => Text('Error: $error'),
        data: (userProfile) {
          String getUserEmail() {
            for (var attribute in userProfile) {
              if (attribute.userAttributeKey.key == 'email') {
                return attribute.value;
              }
            }
            return '';
          }

          return ListView.builder(
              itemCount: widget.children.length,
              prototypeItem: const Card(
                  elevation: 5.0,
                  child: ListTile(
                    title: Text(''),
                    subtitle: Text(''),
                  )),
              itemBuilder: (context, index) {
                return Slidable(
                    endActionPane: ActionPane(
                      motion: const BehindMotion(),
                      children: [
                        SlidableAction(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            autoClose: true,
                            label: 'Approved',
                            onPressed: (BuildContext context) async {
                              AppUserProfile? appUserProfile = await ref
                                  .read(appUserProfileRepository)
                                  .getDocByEmail(getUserEmail());

                              FieldChild updatedItem;
                              switch (
                                  widget.appModule.fieldInspectionModuleKey) {
                                case FieldInspectionModuleKey.DETASSELING:
                                  updatedItem = widget.children[index].copyWith(
                                      detasselingStandardSeedCornInspectionStatus:
                                          InspectionStatusKey.COMPLETED,
                                      detasselingStandardSeedCornApprovalDate:
                                          TemporalDate.now(),
                                      detasselingStandardSeedCornApprovalUserProfile:
                                          appUserProfile?.id);
                                  await Amplify.DataStore.save(updatedItem);
                                case FieldInspectionModuleKey.LEAF_TO_TASSEL:
                                  updatedItem = widget.children[index].copyWith(
                                      leafToTasselStandardSeedCornInspectionStatus:
                                          InspectionStatusKey.COMPLETED,
                                      leafToTasselStandardSeedCornApprovalDate:
                                          TemporalDate.now(),
                                      leafToTasselStandardSeedCornApprovalUserProfile:
                                          appUserProfile?.id);
                                  await Amplify.DataStore.save(updatedItem);
                                case FieldInspectionModuleKey.POPULATIONS:
                                  updatedItem = widget.children[index].copyWith(
                                      populationsStandardSeedCornInspectionStatus:
                                          InspectionStatusKey.COMPLETED,
                                      populationsStandardSeedCornApprovalDate:
                                          TemporalDate.now(),
                                      populationsStandardSeedCornApprovalUserProfile:
                                          appUserProfile?.id);
                                  await Amplify.DataStore.save(updatedItem);
                                case FieldInspectionModuleKey.SCOUTING:
                                  updatedItem = widget.children[index].copyWith(
                                      scoutingStandardSeedCornInspectionStatus:
                                          InspectionStatusKey.COMPLETED,
                                      scoutingStandardSeedCornApprovalDate:
                                          TemporalDate.now(),
                                      scoutingStandardSeedCornApprovalUserProfile:
                                          appUserProfile?.id);
                                  await Amplify.DataStore.save(updatedItem);
                                default:
                                  break;
                              }
                            })
                      ],
                    ),
                    child: CustomCheckboxListTile(
                        data: widget.children[index],
                        checked: widget._checked,
                        docId: widget.children[index].id));
              });
        });
  }
}
