import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fieldscan/models/ModelProvider.dart';
import 'package:fieldscan/src/repositories/field_child_repository.dart';
import 'package:fieldscan/src/repositories/field_parent_repository.dart';
import 'package:fieldscan/src/repositories/hybrid_repository.dart';
import 'package:fieldscan/src/repositories/inspection_type_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final inspectionParentRepository =
    Provider.autoDispose<InspectionParentRepository>(
        (ref) => InspectionParentRepositoryImpl());

class InspectionParentCreateObject {
  final String seasonID;
  final String fieldChildID;
  final InspectionFormTypeKey inspectionFormType;
  final FieldInspectionModuleKey fieldInspectionModule;

  InspectionParentCreateObject(this.seasonID, this.fieldChildID,
      this.inspectionFormType, this.fieldInspectionModule);
}

abstract class InspectionParentRepository {
  Future<void> create(InspectionParentCreateObject object, WidgetRef ref);
  Future<InspectionParent?> getDocByID(String docID);
  Stream<List<InspectionParent>>
      inspectionParentStreamByInspectionModuleForDate(
          FieldInspectionModuleKey? moduleKey, TemporalDate date);
  Stream<List<InspectionParent>> inspectionParentStreamByInspectionModule(
      FieldInspectionModuleKey? moduleKey);
  Stream<List<InspectionParent>>
      inspectionParentStreamByInspectionModuleWithLimit(
          FieldInspectionModuleKey? moduleKey, int page, int limit);
}

class InspectionParentRepositoryImpl implements InspectionParentRepository {
  InspectionParentRepositoryImpl();

  @override
  Future<void> create(
      InspectionParentCreateObject object, WidgetRef ref) async {
    var fieldChildDoc =
        await ref.read(fieldChildRepository).getDocByID(object.fieldChildID);

    Future<InspectionConfigurationObject?>
        getMatchingInspectionConfigurationObject() async {
      List<InspectionConfigurationObject>? inspectionConfigurations =
          fieldChildDoc?.inspectionConfigurations;

      if (inspectionConfigurations != null &&
          inspectionConfigurations.isNotEmpty) {
        for (final configuration in inspectionConfigurations) {
          var inspectionTypeDoc = await ref
              .read(inspectionTypeRepository)
              .getDocByID(configuration.inspectionTypeID);
          if (inspectionTypeDoc != null) {
            if (inspectionTypeDoc.inspectionFormType ==
                object.inspectionFormType) {
              return configuration;
            }
          }
        }
      }
      return null;
    }

    InspectionConfigurationObject? matchingConfiguration =
        await getMatchingInspectionConfigurationObject();

    if (fieldChildDoc != null && matchingConfiguration != null) {
      var inspectionTypeDoc = await ref
          .read(inspectionTypeRepository)
          .getDocByID(matchingConfiguration.inspectionTypeID);

      String? inspectionTypeID = matchingConfiguration.inspectionTypeID;

      FieldInspectionModuleKey? fieldInspectionModule =
          inspectionTypeDoc?.inspectionModule;

      var fieldParentDoc = await ref
          .read(fieldParentRepository)
          .getDocByID(fieldChildDoc.fieldparentID);

      var hybridDoc =
          await ref.read(hybridRepository).getDocByID(fieldChildDoc.hybridID);

      if (hybridDoc != null) {
        if (fieldParentDoc != null) {
          if (fieldParentDoc.mapCenterPoint != null) {
            if (fieldInspectionModule != null) {
              int getRequiredInspections() {
                switch (object.fieldInspectionModule) {
                  case FieldInspectionModuleKey.DETASSELING:
                    return fieldChildDoc
                            .detasselingStandardSeedCornRequiredInspections ??
                        matchingConfiguration.requiredInspections;
                  case FieldInspectionModuleKey.LEAF_TO_TASSEL:
                    return fieldChildDoc
                            .leafToTasselStandardSeedCornRequiredInspections ??
                        matchingConfiguration.requiredInspections;
                  case FieldInspectionModuleKey.POPULATIONS:
                    return fieldChildDoc
                            .populationsStandardSeedCornRequiredInspections ??
                        matchingConfiguration.requiredInspections;
                  case FieldInspectionModuleKey.SCOUTING:
                    return fieldChildDoc
                            .scoutingStandardSeedCornRequiredInspections ??
                        matchingConfiguration.requiredInspections;
                }
              }

              var doc = InspectionParent(
                  scheduledDate: TemporalDate.now(),
                  requiredInspections: getRequiredInspections(),
                  inspectionFormType: object.inspectionFormType,
                  fieldchildID: object.fieldChildID,
                  inspectionTypeID: inspectionTypeID,
                  seasonID: object.seasonID,
                  fieldInspectionModule: fieldInspectionModule,
                  fieldName: fieldChildDoc.fieldName,
                  fieldNumber: fieldChildDoc.fieldNumber,
                  hybridName: fieldChildDoc.hybridName,
                  mapCenter: fieldParentDoc.mapCenterPoint!);

              await Amplify.DataStore.save(doc);
            } else {
              if (kDebugMode) {
                print(
                    'Cannot Save InspectionParent. FieldInspectionModule not found');
              }
            }
          } else {
            if (kDebugMode) {
              print(
                  'Cannot Save InspectionParent. FieldParent.MapCenter not found');
            }
          }
        } else {
          if (kDebugMode) {
            print('Cannot Save InspectionParent. FieldParentDoc not found');
          }
        }
      } else {
        if (kDebugMode) {
          print('Cannot Save InspectionParent. HybridDoc not found');
        }
      }
    } else {
      if (kDebugMode) {
        print('fieldChildDoc: $fieldChildDoc');
        print(
            'Unable to create InspectionParent. Missing Information in Database');
      }
    }
  }

  @override
  Future<InspectionParent?> getDocByID(String docID) async {
    var docs = await Amplify.DataStore.query(InspectionParent.classType,
        where: InspectionParent.ID.eq(docID));
    if (docs.isNotEmpty) {
      return docs.first;
    }
    return null;
  }

  @override
  Stream<List<InspectionParent>>
      inspectionParentStreamByInspectionModuleForDate(
          FieldInspectionModuleKey? moduleKey, TemporalDate date) {
    Stream<List<InspectionParent>> stream = Amplify.DataStore.query(
        InspectionParent.classType,
        where: InspectionParent.SCHEDULEDDATE
            .eq(date)
            .and(InspectionParent.FIELDINSPECTIONMODULE.eq(moduleKey)),
        sortBy: [
          InspectionParent.FIELDNAME.descending(),
          InspectionParent.FIELDNUMBER.descending()
        ]).asStream();
    return stream;
  }

  @override
  Stream<List<InspectionParent>> inspectionParentStreamByInspectionModule(
      FieldInspectionModuleKey? moduleKey) {
    Stream<List<InspectionParent>> stream = Amplify.DataStore.query(
        InspectionParent.classType,
        where: InspectionParent.FIELDINSPECTIONMODULE.eq(moduleKey),
        sortBy: [
          InspectionParent.SCHEDULEDDATE.descending(),
          InspectionParent.FIELDNAME.descending(),
          InspectionParent.FIELDNUMBER.descending()
        ]).asStream();
    return stream;
  }

  @override
  Stream<List<InspectionParent>>
      inspectionParentStreamByInspectionModuleWithLimit(
          FieldInspectionModuleKey? moduleKey, int page, int limit) {
    Stream<List<InspectionParent>> stream =
        Amplify.DataStore.query(InspectionParent.classType,
                where: InspectionParent.FIELDINSPECTIONMODULE.eq(moduleKey),
                sortBy: [
                  InspectionParent.SCHEDULEDDATE.descending(),
                  InspectionParent.FIELDNAME.descending(),
                  InspectionParent.FIELDNUMBER.descending()
                ],
                pagination: QueryPagination(page: page, limit: limit))
            .asStream();
    return stream;
  }
}
