import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/features/inspection/pages/history_tab/history_page/history_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:list_ext/list_ext.dart';

class LeafToTasselStandardCard extends StatelessWidget {
  const LeafToTasselStandardCard({
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
                    date: data.scheduledDate.toString())),
          ));
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
                                  Row(children: [
                                    FieldNumberWidget(data: data),
                                    HybridNameWidget(data: data)
                                  ]),
                                  DateRowWidget(data: data),
                                ],
                              ),
                              InspectionCountColumnWidget(data: data)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                EarShootLengthWidget(data: data),
                                InchesToSilkEmergenceWidget(data: data),
                                TasselLengthInchesWidget(data: data),
                                NumberOfLeavesWidget(data: data),
                                SilkStageWidget(data: data),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      RoguesColumnWidget(data: data),
                                      CommentsColumnWidget(data: data)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ])))));
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
            if (inspection.leafToTasselStandardSeedCornFormObject?.comments !=
                null) {
              if (inspection.leafToTasselStandardSeedCornFormObject!.comments!
                  .isNotEmpty) {
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
                    .leafToTasselStandardSeedCornFormObject?.areRoguesPresent !=
                null) {
              if (inspection.leafToTasselStandardSeedCornFormObject!
                      .areRoguesPresent ==
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

class SilkStageWidget extends StatelessWidget {
  const SilkStageWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    String getHighestSilkStageObserved() {
      List<int> silkStagesList = [];
      if (data.InspectionChildren != null) {
        if (data.InspectionChildren!.isNotEmpty) {
          for (var inspection in data.InspectionChildren!) {
            if (inspection.leafToTasselStandardSeedCornFormObject?.silkStage !=
                null) {
              silkStagesList.add(
                  inspection.leafToTasselStandardSeedCornFormObject!.silkStage);
            }
          }
        }
      }

      silkStagesList.sort();
      if (silkStagesList.isNotEmpty) {
        return silkStagesList.last.toString();
      }
      return '1';
    }

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(children: [
        const Text('Silk Stage: ', textAlign: TextAlign.center),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Text(getHighestSilkStageObserved()),
        )
      ]),
    );
  }
}

class NumberOfLeavesWidget extends StatelessWidget {
  const NumberOfLeavesWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    String getNumberOfLeavesAverage() {
      List<double> observations = [];
      if (data.InspectionChildren != null) {
        if (data.InspectionChildren!.isNotEmpty) {
          for (var inspection in data.InspectionChildren!) {
            if (inspection
                    .leafToTasselStandardSeedCornFormObject?.numberOfLeaves !=
                null) {
              observations.add(inspection
                  .leafToTasselStandardSeedCornFormObject!.numberOfLeaves);
            }
          }
        }
      }

      if (observations.isNotEmpty) {
        return observations.avg().toStringAsFixed(2);
      }
      return '0';
    }

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(children: [
        const Text('Number of Leaves: ', textAlign: TextAlign.center),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Text(getNumberOfLeavesAverage()),
        ),
      ]),
    );
  }
}

class TasselLengthInchesWidget extends StatelessWidget {
  const TasselLengthInchesWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    String getTasselLengthInchesAverage() {
      List<double> observations = [];
      if (data.InspectionChildren != null) {
        if (data.InspectionChildren!.isNotEmpty) {
          for (var inspection in data.InspectionChildren!) {
            if (inspection.leafToTasselStandardSeedCornFormObject
                    ?.tasselLengthInches !=
                null) {
              observations.add(inspection
                  .leafToTasselStandardSeedCornFormObject!.tasselLengthInches);
            }
          }
        }
      }

      if (observations.isNotEmpty) {
        return observations.avg().toStringAsFixed(2);
      }
      return '0';
    }

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(children: [
        const Text('Tassel Length (Inches): ', textAlign: TextAlign.center),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Text(getTasselLengthInchesAverage()),
        ),
      ]),
    );
  }
}

class InchesToSilkEmergenceWidget extends StatelessWidget {
  const InchesToSilkEmergenceWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    String getInchesToSilkEmergenceAverage() {
      List<double> observations = [];
      if (data.InspectionChildren != null) {
        if (data.InspectionChildren!.isNotEmpty) {
          for (var inspection in data.InspectionChildren!) {
            if (inspection.leafToTasselStandardSeedCornFormObject
                    ?.inchesToSilkEmergence !=
                null) {
              observations.add(inspection
                  .leafToTasselStandardSeedCornFormObject!
                  .inchesToSilkEmergence);
            }
          }
        }
      }

      if (observations.isNotEmpty) {
        return observations.avg().toStringAsFixed(2);
      }
      return '0';
    }

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(children: [
        const Text('Inches to Silk Emergence: ', textAlign: TextAlign.center),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Text(getInchesToSilkEmergenceAverage()),
        )
      ]),
    );
  }
}

class EarShootLengthWidget extends StatelessWidget {
  const EarShootLengthWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    String getEarShootLengthAverage() {
      List<double> observations = [];
      if (data.InspectionChildren != null) {
        if (data.InspectionChildren!.isNotEmpty) {
          for (var inspection in data.InspectionChildren!) {
            if (inspection.leafToTasselStandardSeedCornFormObject
                    ?.earShootLengthInches !=
                null) {
              observations.add(inspection
                  .leafToTasselStandardSeedCornFormObject!
                  .earShootLengthInches);
            }
          }
        }
      }

      if (observations.isNotEmpty) {
        return observations.avg().toStringAsFixed(2);
      }
      return '0';
    }

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Ear Shoot Length (Inches): ',
                textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Text(getEarShootLengthAverage()),
            ),
          ]),
    );
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
