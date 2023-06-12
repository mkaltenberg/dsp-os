import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/features/inspection/pages/history_tab/history_page/history_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:list_ext/list_ext.dart';

class DetasselingStandardCard extends StatelessWidget {
  const DetasselingStandardCard({
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
                        children: [
                          FemaleTasselsColumnWidget(data: data),
                          SilkAndPollenColumnWidget(data: data),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RoguesColumnWidget(data: data),
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
            if (inspection.detasselingStandardSeedCornFormObject?.comments !=
                null) {
              if (inspection.detasselingStandardSeedCornFormObject!.comments!
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
                    .detasselingStandardSeedCornFormObject?.areRoguesPresent !=
                null) {
              if (inspection.detasselingStandardSeedCornFormObject!
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

class SilkAndPollenColumnWidget extends StatelessWidget {
  const SilkAndPollenColumnWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  String getReceptiveSilkAverage() {
    List<int> observations = [];
    if (data.InspectionChildren != null) {
      if (data.InspectionChildren!.isNotEmpty) {
        for (var inspection in data.InspectionChildren!) {
          if (inspection
                  .detasselingStandardSeedCornFormObject?.femaleReceptiveSilk !=
              null) {
            observations.add(inspection
                .detasselingStandardSeedCornFormObject!.femaleReceptiveSilk);
          }
        }
      }
    }

    if (observations.isNotEmpty) {
      return observations.avg().toStringAsFixed(2);
    }
    return '0';
  }

  String getMaleTasselSheddingAverage() {
    List<int> observations = [];
    if (data.InspectionChildren != null) {
      if (data.InspectionChildren!.isNotEmpty) {
        for (var inspection in data.InspectionChildren!) {
          if (inspection
                  .detasselingStandardSeedCornFormObject?.maleTasselsShedding !=
              null) {
            observations.add(inspection
                .detasselingStandardSeedCornFormObject!.maleTasselsShedding);
          }
        }
      }
    }

    if (observations.isNotEmpty) {
      return observations.avg().toStringAsFixed(2);
    }
    return '0';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Silk and Pollen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(children: [
            const Text('Silk: ', textAlign: TextAlign.center),
            Text(
              (getReceptiveSilkAverage()),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(children: [
            const Text('Pollen: ', textAlign: TextAlign.center),
            Text(
              (getMaleTasselSheddingAverage()),
            )
          ]),
        ),
      ],
    );
  }
}

class FemaleTasselsColumnWidget extends StatelessWidget {
  const FemaleTasselsColumnWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InspectionParent data;

  @override
  Widget build(BuildContext context) {
    String getFemaleTasselsRemainingAverage() {
      List<int> observations = [];
      if (data.InspectionChildren != null) {
        if (data.InspectionChildren!.isNotEmpty) {
          for (var inspection in data.InspectionChildren!) {
            if (inspection.detasselingStandardSeedCornFormObject
                    ?.femaleTasselsRemaining !=
                null) {
              observations.add(inspection.detasselingStandardSeedCornFormObject!
                  .femaleTasselsRemaining);
            }
          }
        }
      }

      if (observations.isNotEmpty) {
        return observations.avg().toStringAsFixed(2);
      }
      return '0';
    }

    String getFemaleTasselsExposedAverage() {
      List<int> observations = [];
      if (data.InspectionChildren != null) {
        if (data.InspectionChildren!.isNotEmpty) {
          for (var inspection in data.InspectionChildren!) {
            if (inspection.detasselingStandardSeedCornFormObject
                    ?.femaleTasselsExposed !=
                null) {
              observations.add(inspection
                  .detasselingStandardSeedCornFormObject!.femaleTasselsExposed);
            }
          }
        }
      }

      if (observations.isNotEmpty) {
        return observations.avg().toStringAsFixed(2);
      }
      return '0';
    }

    String getFemaleTasselsSheddingAverage() {
      List<int> observations = [];
      if (data.InspectionChildren != null) {
        if (data.InspectionChildren!.isNotEmpty) {
          for (var inspection in data.InspectionChildren!) {
            if (inspection.detasselingStandardSeedCornFormObject
                    ?.femaleTasselsShedding !=
                null) {
              observations.add(inspection.detasselingStandardSeedCornFormObject!
                  .femaleTasselsShedding);
            }
          }
        }
      }

      if (observations.isNotEmpty) {
        return observations.avg().toStringAsFixed(2);
      }
      return '0';
    }

    return Column(
      children: [
        const Text(
          'Female Tassels',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Remaining: ', textAlign: TextAlign.center),
                Text(
                  (getFemaleTasselsRemainingAverage()),
                ),
              ]),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(children: [
            const Text('Exposed: ', textAlign: TextAlign.center),
            Text(
              (getFemaleTasselsExposedAverage()),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(children: [
            const Text('Shedding: ', textAlign: TextAlign.center),
            Text(
              (getFemaleTasselsSheddingAverage()),
            )
          ]),
        ),
      ],
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
