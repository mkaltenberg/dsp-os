import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/features/inspection/pages/history_tab/history_page/history_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScoutingStandardCard extends StatelessWidget {
  const ScoutingStandardCard({
    Key? key,
    required this.ref,
    required this.data,
  }) : super(key: key);

  final WidgetRef ref;
  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HistoryDetailPage(
                  viewModel: HistoryDetailViewModel(
                      inspectionParent: data,
                      fieldName: data.fieldName,
                      fieldNumber: data.fieldNumber,
                      hybridName: data.hybridName,
                      date: data.scheduledDate.toString()),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FieldNameWidget(data: data),
                            Row(
                              children: [
                                FieldNumberWidget(data: data),
                                HybridNameWidget(data: data)
                              ],
                            ),
                            DateRowWidget(data: data),
                          ],
                        ),
                        InspectionCountColumnWidget(data: data)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [CropDamageColumnWidget(data: data)],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RoguesColumnWidget(data: data),
                          WateringColumnWidget(data: data),
                          CommentsColumnWidget(data: data)
                        ],
                      ),
                    )
                  ],
                )),
          )),
    );
  }
}

class CommentsColumnWidget extends StatelessWidget {
  const CommentsColumnWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    String hasCommentsResponse() {
      if (data.InspectionChildren != null) {
        if (data.InspectionChildren!.isNotEmpty) {
          for (var inspection in data.InspectionChildren!) {
            if (inspection.scoutingStandardSeedCornFormObject?.comments !=
                null) {
              if (inspection
                  .scoutingStandardSeedCornFormObject!.comments!.isNotEmpty) {
                return 'Yes';
              }
            }
          }
        }
      }
      return 'No';
    }

    return Column(children: [
      const Text('Has Comments?',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
      Text(hasCommentsResponse())
    ]);
  }
}

class RoguesColumnWidget extends StatelessWidget {
  const RoguesColumnWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    String hasRoguesResponse() {
      if (data.InspectionChildren != null) {
        if (data.InspectionChildren!.isNotEmpty) {
          for (var inspection in data.InspectionChildren!) {
            if (inspection
                    .scoutingStandardSeedCornFormObject?.areRoguesPresent !=
                null) {
              if (inspection
                      .scoutingStandardSeedCornFormObject!.areRoguesPresent ==
                  true) {
                return 'Yes';
              }
            }
          }
        }
      }
      return 'No';
    }

    return Column(children: [
      const Text('Has Rogues?',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
      Text(hasRoguesResponse())
    ]);
  }
}

class WateringColumnWidget extends StatelessWidget {
  const WateringColumnWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    String isWateringResponse() {
      if (data.InspectionChildren != null) {
        if (data.InspectionChildren!.isNotEmpty) {
          for (var inspection in data.InspectionChildren!) {
            if (inspection.scoutingStandardSeedCornFormObject?.isWatering !=
                null) {
              if (inspection.scoutingStandardSeedCornFormObject!.isWatering ==
                  true) {
                return 'Yes';
              }
            }
          }
        }
      }
      return 'No';
    }

    return Column(children: [
      const Text('Is Watering?',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
      Text(isWateringResponse())
    ]);
  }
}

class InspectionCountColumnWidget extends StatelessWidget {
  const InspectionCountColumnWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    String getInspectionsCompleted() {
      if (data.InspectionChildren != null) {
        if (data.InspectionChildren!.isNotEmpty) {
          return data.InspectionChildren!.length.toString();
        }
      }
      return '0';
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        const Text('Inspections'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(getInspectionsCompleted()),
        )
      ]),
    );
  }
}

class CropDamageColumnWidget extends StatelessWidget {
  const CropDamageColumnWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  String getWeedsCount() {
    if (data.InspectionChildren != null) {
      if (data.InspectionChildren!.isNotEmpty) {
        for (var inspection in data.InspectionChildren!) {
          if (inspection.scoutingStandardSeedCornFormObject?.weeds != null) {
            return inspection.scoutingStandardSeedCornFormObject!.weeds!.length
                .toString();
          }
        }
      }
    }
    return '0';
  }

  String getInsectsCount() {
    if (data.InspectionChildren != null) {
      if (data.InspectionChildren!.isNotEmpty) {
        for (var inspection in data.InspectionChildren!) {
          if (inspection.scoutingStandardSeedCornFormObject?.insects != null) {
            return inspection
                .scoutingStandardSeedCornFormObject!.insects!.length
                .toString();
          }
        }
      }
    }
    return '0';
  }

  String getPestsCount() {
    if (data.InspectionChildren != null) {
      if (data.InspectionChildren!.isNotEmpty) {
        for (var inspection in data.InspectionChildren!) {
          if (inspection.scoutingStandardSeedCornFormObject?.pests != null) {
            return inspection.scoutingStandardSeedCornFormObject!.pests!.length
                .toString();
          }
        }
      }
    }
    return '0';
  }

  String getDiseasesCount() {
    if (data.InspectionChildren != null) {
      if (data.InspectionChildren!.isNotEmpty) {
        for (var inspection in data.InspectionChildren!) {
          if (inspection.scoutingStandardSeedCornFormObject?.diseases != null) {
            return inspection
                .scoutingStandardSeedCornFormObject!.diseases!.length
                .toString();
          }
        }
      }
    }
    return '0';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Damage Observations',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(children: [
            const Text('Weeds: ', textAlign: TextAlign.center),
            Text(
              (getWeedsCount()),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(children: [
            const Text('Insects: ', textAlign: TextAlign.center),
            Text(
              (getInsectsCount()),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(children: [
            const Text('Pests: ', textAlign: TextAlign.center),
            Text(
              (getPestsCount()),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(children: [
            const Text('Diseases: ', textAlign: TextAlign.center),
            Text(
              (getDiseasesCount()),
            )
          ]),
        )
      ],
    );
  }
}

class DateRowWidget extends StatelessWidget {
  const DateRowWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
          child: Text(
            'Date:',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 4, 8, 4),
          child: Text(
            data.scheduledDate.toString(),
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 8.0))
      ],
    );
  }
}

class HybridNameWidget extends StatelessWidget {
  const HybridNameWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Text(
        data.hybridName,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
      ),
    );
  }
}

class FieldNumberWidget extends StatelessWidget {
  const FieldNumberWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Text(
        data.fieldNumber,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
      ),
    );
  }
}

class FieldNameWidget extends StatelessWidget {
  const FieldNameWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
      child: Text(
        data.fieldName,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
    );
  }
}
