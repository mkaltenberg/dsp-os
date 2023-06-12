import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:fieldscan/src/constants/providers/current_module.dart';
import 'package:fieldscan/src/constants/providers/router_tab_bar_notifier.dart';
import 'package:fieldscan/src/features/inspection/pages/schedule_tab/inspection_locator_page.dart';
import 'package:fieldscan/src/repositories/field_child_repository.dart';
import 'package:fieldscan/src/repositories/field_parent_repository.dart';
import 'package:fieldscan/src/repositories/inspection_parent_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grouped_list/grouped_list.dart';

class SchedulePage extends ConsumerStatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  SchedulePageState createState() => SchedulePageState();
}

class SchedulePageState extends ConsumerState<SchedulePage> {
  @override
  void initState() {
    super.initState();
  }

  FieldInspectionModuleKey? getCurrentInspectionType() {
    return ref.watch(currentModuleProvider).fieldInspectionModuleKey;
  }

  @override
  Widget build(BuildContext context) {
    final currentDate = TemporalDate.now();

    Stream<List<InspectionParent>> inspectionParentStream = ref
        .read(inspectionParentRepository)
        .inspectionParentStreamByInspectionModuleForDate(
            getCurrentInspectionType(), currentDate);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Schedule'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add_box_outlined),
              onPressed: () {
                ref.watch(routerTabBarProvider.notifier).setIsVisable(false);
                Navigator.of(context).pushNamed('/add_to_schedule');
              },
            )
          ],
        ),
        body: StreamBuilder<List<InspectionParent>>(
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
                  groupBy: (element) => element.completionStatus,
                  sort: true,
                  itemComparator: (item1, item2) =>
                      item2.fieldName.compareTo(item1.fieldName),
                  groupHeaderBuilder: (element) => Container(
                      height: 50,
                      color: Colors.grey.shade700,
                      child: Center(
                          child: Text(
                        element.completionStatus.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ))),
                  itemBuilder: (context, element) {
                    return ScheduleCard(ref: ref, data: element);
                  },
                  order: GroupedListOrder.DESC,
                  useStickyGroupSeparators: true);
            }));
  }
}

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    Key? key,
    required this.ref,
    required this.data,
  }) : super(key: key);

  final WidgetRef ref;
  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    Future<FieldChild?> getFieldChildDoc(String docID) async {
      return await ref.read(fieldChildRepository).getDocByID(docID);
    }

    Future<FieldParent?> getFieldParentDoc(String docID) async {
      return await ref.read(fieldParentRepository).getDocByID(docID);
    }

    return FutureBuilder(
        future: getFieldChildDoc(data.fieldchildID),
        builder: ((context, fieldChildDoc) {
          if (fieldChildDoc.hasData) {
            return FutureBuilder(
                future: getFieldParentDoc(fieldChildDoc.data!.fieldparentID),
                builder: (context, fieldParentDoc) {
                  if (fieldParentDoc.hasData) {
                    GestureDetector(
                      onTap: () {
                        ref
                            .watch(routerTabBarProvider.notifier)
                            .setIsVisable(false);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => InspectionLocatorPage(
                                  inspectionParent: data,
                                  mapCenter: data.mapCenter,
                                )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Card(
                            elevation: 12.0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 4),
                                    child: Text(
                                      data.fieldName,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 4, 8, 4),
                                        child: Text(
                                          data.fieldNumber,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 4, 8, 4),
                                        child: Text(
                                          data.hybridName,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 4, 8, 4),
                                        child: Text(
                                          'Date:',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 4, 8, 4),
                                        child: Text(
                                          data.scheduledDate.toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15),
                                        ),
                                      ),
                                      const Padding(
                                          padding: EdgeInsets.only(left: 8.0))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                  'Required \nInspections',
                                                  textAlign: TextAlign.center),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                data.requiredInspections
                                                    .toString(),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Completed \nInspections',
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(data
                                                        .InspectionChildren
                                                        ?.length
                                                        .toString() ??
                                                    '0'))
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ),
                    );
                  }
                  return Container();
                });
          }
          return Container();
        }));
  }
}
