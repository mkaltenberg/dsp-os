import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/constants/enums/app_module.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HistoryDetailViewModel {
  final InspectionParent inspectionParent;
  final String fieldName;
  final String fieldNumber;
  final String hybridName;
  final String date;

  HistoryDetailViewModel(
      {required this.inspectionParent,
      required this.fieldName,
      required this.fieldNumber,
      required this.hybridName,
      required this.date});
}

class HistoryDetailPage extends ConsumerWidget {
  const HistoryDetailPage({Key? key, required this.viewModel})
      : super(key: key);

  final HistoryDetailViewModel viewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<List<Widget>> _pageViewBuilder() async {
      List<Widget> pages = [];

      List<InspectionChild>? inspectionChildren;

      try {
        inspectionChildren = await Amplify.DataStore.query(
            InspectionChild.classType,
            where: InspectionChild.INSPECTIONPARENTID
                .eq(viewModel.inspectionParent.id),
            sortBy: [
              InspectionChild.DATE.descending(),
              InspectionChild.TIME.descending()
            ]);
      } catch (e) {
        if (kDebugMode) {
          print("Could not query DataStore: $e");
        }
      }

      if (inspectionChildren != null) {
        for (var i = 0; i < inspectionChildren.length; i++) {
          switch (viewModel.inspectionParent.inspectionFormType) {
            case InspectionFormTypeKey.LEAF_TO_TASSEL_SEED_CORN_STANDARD:
              pages.add(LeafToTasselInspectionWidget(
                inspectionChild: inspectionChildren[i],
                inspectionNumber: i + 1,
                viewModel: viewModel,
              ));
              break;
            case InspectionFormTypeKey.DETASSELING_SEED_CORN_STANDARD:
              pages.add(DetasselingInspectionWidget(
                  inspectionChild: inspectionChildren[i],
                  inspectionNumber: i + 1,
                  viewModel: viewModel));
              break;
            case InspectionFormTypeKey.POPULATIONS_SEED_CORN_STANDARD:
              pages.add(PopulationsInspectionWidget(
                inspectionChild: inspectionChildren[i],
                inspectionNumber: i + 1,
                viewModel: viewModel,
              ));
              break;
            case InspectionFormTypeKey.SCOUTING_SEED_CORN_STANDARD:
            default:
              break;
          }
        }
      }
      return pages;
    }

    final PageController controller = PageController();
    return FutureBuilder(
        future: _pageViewBuilder(),
        builder: (BuildContext context, AsyncSnapshot<List<Widget>> snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
                appBar: AppBar(
                    title: Text(
                  '${viewModel.fieldName} - ${viewModel.fieldNumber}',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                )),
                body: PageView(
                  controller: controller,
                  children: snapshot.data!,
                ));
          }

          return const Center(child: Text('Empty'));
        });
  }
}

class LeafToTasselInspectionWidget extends ConsumerWidget {
  const LeafToTasselInspectionWidget(
      {Key? key,
      required this.inspectionNumber,
      required this.inspectionChild,
      required this.viewModel})
      : super(key: key);

  final int inspectionNumber;
  final InspectionChild inspectionChild;
  final HistoryDetailViewModel viewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                height: 40,
                color: ref.watch(AppModule.leafToTassel.colorScheme).primary,
                child: Center(
                    child: Text('Inspection $inspectionNumber',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white)))),
            const SizedBox(height: 15),
            HeaderText(value: viewModel.fieldName),
            SubHeaderText(value: viewModel.hybridName),
            SubHeaderText(
                value: inspectionChild.userEmail
                    .substring(0, inspectionChild.userEmail.indexOf('@'))),
            SubHeaderText(
                title: 'Date', value: inspectionChild.date.toString()),
            SubHeaderText(
                title: 'Time', value: inspectionChild.time.toString()),
            const HeaderText(title: 'Inspection Observations'),
            SubHeaderText(
                title: 'Ear Shoot Length (inches)',
                value: inspectionChild.leafToTasselStandardSeedCornFormObject!
                    .earShootLengthInches
                    .toString()),
            SubHeaderText(
                title: 'Inches to Silk Emergence',
                value: inspectionChild.leafToTasselStandardSeedCornFormObject!
                    .inchesToSilkEmergence
                    .toString()),
            SubHeaderText(
                title: 'Number of Leaves',
                value: inspectionChild
                    .leafToTasselStandardSeedCornFormObject!.numberOfLeaves
                    .toString()),
            SubHeaderText(
                title: 'Tassel Length (inches)',
                value: inspectionChild
                    .leafToTasselStandardSeedCornFormObject!.tasselLengthInches
                    .toString()),
            SubHeaderText(
                title: 'Silk Stage',
                value: inspectionChild
                    .leafToTasselStandardSeedCornFormObject!.silkStage
                    .toString()),
            HeaderText(
                title: 'Has Rogues?',
                value: inspectionChild.leafToTasselStandardSeedCornFormObject!
                            .areRoguesPresent ==
                        true
                    ? 'Yes'
                    : 'No'),
            HeaderText(
                title: 'Comments',
                value: inspectionChild
                    .leafToTasselStandardSeedCornFormObject!.comments),
          ],
        ),
      ]),
    );
  }
}

class DetasselingInspectionWidget extends ConsumerWidget {
  const DetasselingInspectionWidget(
      {Key? key,
      required this.inspectionNumber,
      required this.inspectionChild,
      required this.viewModel})
      : super(key: key);

  final int inspectionNumber;
  final InspectionChild inspectionChild;
  final HistoryDetailViewModel viewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 40,
              color: ref.watch(AppModule.detasseling.colorScheme).primary,
              child: Center(
                  child: Text('Inspection $inspectionNumber',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)))),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              HeaderText(value: viewModel.fieldName),
              SubHeaderText(value: viewModel.hybridName),
              SubHeaderText(value: inspectionChild.userEmail),
              SubHeaderText(
                  title: 'Date', value: inspectionChild.date.toString()),
              SubHeaderText(
                  title: 'Time', value: inspectionChild.time.toString()),
              const HeaderText(title: 'Female Tassels'),
              SubHeaderText(
                  title: 'Remaining',
                  value: inspectionChild.detasselingStandardSeedCornFormObject
                      ?.femaleTasselsRemaining
                      .toString()),
              SubHeaderText(
                  title: 'Exposed',
                  value: inspectionChild.detasselingStandardSeedCornFormObject
                      ?.femaleTasselsExposed
                      .toString()),
              SubHeaderText(
                  title: 'Shedding',
                  value: inspectionChild.detasselingStandardSeedCornFormObject
                      ?.femaleTasselsShedding
                      .toString()),
              const HeaderText(title: 'Silk and Pollen'),
              SubHeaderText(
                  title: 'Receptive Silk',
                  value: inspectionChild.detasselingStandardSeedCornFormObject
                      ?.femaleReceptiveSilk
                      .toString()),
              SubHeaderText(
                  title: 'MaleShedding',
                  value: inspectionChild.detasselingStandardSeedCornFormObject
                      ?.maleTasselsShedding
                      .toString()),
              HeaderText(
                  title: 'Has Rogues?',
                  value: inspectionChild.detasselingStandardSeedCornFormObject
                              ?.areRoguesPresent ==
                          true
                      ? 'Yes'
                      : 'No'),
              HeaderText(
                  title: 'Comments',
                  value: inspectionChild
                      .detasselingStandardSeedCornFormObject?.comments)
            ]),
          ),
        ],
      ),
    );
  }
}

class PopulationsInspectionWidget extends ConsumerWidget {
  const PopulationsInspectionWidget(
      {Key? key,
      required this.inspectionNumber,
      required this.inspectionChild,
      required this.viewModel})
      : super(key: key);

  final int inspectionNumber;
  final InspectionChild inspectionChild;
  final HistoryDetailViewModel viewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              height: 40,
              color: ref.watch(AppModule.populations.colorScheme).primary,
              child: Center(
                  child: Text('Inspection $inspectionNumber',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)))),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              HeaderText(value: viewModel.fieldName),
              SubHeaderText(value: viewModel.hybridName),
              SubHeaderText(value: inspectionChild.userEmail),
              SubHeaderText(
                  title: 'Date', value: inspectionChild.date.toString()),
              SubHeaderText(
                  title: 'Time', value: inspectionChild.time.toString()),
              const HeaderText(title: 'Female'),
              SubHeaderText(
                  title: 'Count One',
                  value: inspectionChild
                      .populationsStandardSeedCornFormObject?.femaleCountOne
                      .toString()),
              SubHeaderText(
                  title: 'Count Two',
                  value: inspectionChild
                      .populationsStandardSeedCornFormObject?.femaleCountTwo
                      .toString()),
              const HeaderText(title: 'Male'),
              SubHeaderText(
                  title: 'Count One',
                  value: inspectionChild
                      .populationsStandardSeedCornFormObject?.maleCount
                      .toString()),
              HeaderText(
                  title: 'Comments',
                  value: inspectionChild
                      .detasselingStandardSeedCornFormObject?.comments)
            ]),
          ),
        ],
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key, this.title, this.value}) : super(key: key);

  final String? title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    String text = '';

    if (title != null && value != null) {
      text = '$title: $value';
    }

    if (title != null && value == null) {
      text = title!;
    }

    if (title == null && value != null) {
      text = value!;
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Row(
        children: [
          if (title != null)
            ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: 300, minHeight: 20, maxWidth: 150, minWidth: 40),
                child: Text(text,
                    overflow: TextOverflow.visible,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 17))),
          if (title != null && value != null)
            const Text(': ',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
          if (title != null && value != null)
            Flexible(
              child: Text(value!,
                  maxLines: 10,
                  overflow: TextOverflow.visible,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 17)),
            ),
          if (title == null && value != null)
            Flexible(
              child: Text(value!,
                  maxLines: 10,
                  overflow: TextOverflow.visible,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 17)),
            ),
        ],
      ),
    );
  }
}

class SubHeaderText extends StatelessWidget {
  const SubHeaderText({Key? key, this.title, this.value}) : super(key: key);

  final String? title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    String text = '';

    if (title != null && value != null) {
      text = '$title: $value';
    }

    if (title != null && value == null) {
      text = title!;
    }

    if (title == null && value != null) {
      text = value!;
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 2, 8, 2),
      child: Row(
        children: [
          Text(text,
              style:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
        ],
      ),
    );
  }
}
