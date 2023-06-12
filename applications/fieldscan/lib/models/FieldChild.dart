/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the FieldChild type in your schema. */
@immutable
class FieldChild extends Model {
  static const classType = const _FieldChildModelType();
  final String id;
  final String? _seasonID;
  final String? _fieldparentID;
  final String? _hybridID;
  final bool? _isCertified;
  final List<GrowerShareObject>? _growerShares;
  final FieldAcresObject? _acres;
  final List<PlantingDateObject>? _plantingDates;
  final List<InspectionParent>? _InspectionParents;
  final String? _fieldName;
  final String? _fieldNumber;
  final String? _hybridName;
  final List<InspectionConfigurationObject>? _inspectionConfigurations;
  final TemporalDate? _detasselingStandardSeedCornApprovalDate;
  final TemporalDate? _leafToTasselStandardSeedCornApprovalDate;
  final TemporalDate? _populationsStandardSeedCornApprovalDate;
  final TemporalDate? _scoutingStandardSeedCornApprovalDate;
  final String? _detasselingStandardSeedCornApprovalUserProfile;
  final String? _leafToTasselStandardSeedCornApprovalUserProfile;
  final String? _populationsStandardSeedCornApprovalUserProfile;
  final String? _scoutingStandardSeedCornApprovalUserProfile;
  final int? _detasselingStandardSeedCornRequiredInspections;
  final int? _leafToTasselStandardSeedCornRequiredInspections;
  final int? _populationsStandardSeedCornRequiredInspections;
  final int? _scoutingStandardSeedCornRequiredInspections;
  final InspectionStatusKey? _detasselingStandardSeedCornInspectionStatus;
  final InspectionStatusKey? _leafToTasselStandardSeedCornInspectionStatus;
  final InspectionStatusKey? _populationsStandardSeedCornInspectionStatus;
  final InspectionStatusKey? _scoutingStandardSeedCornInspectionStatus;
  final InspectionFormTypeKey? _leafToTasselStandardSeedCornInspectionType;
  final InspectionFormTypeKey? _populationsStandardSeedCornInspectionType;
  final InspectionFormTypeKey? _scoutingStandardSeedCornInspectionType;
  final InspectionFormTypeKey? _detasselingStandardSeedCornInspectionType;
  final String? _leafToTasselStandardSeedCornMostRecentInspection;
  final String? _populationsStandardSeedCornMostRecentInspection;
  final String? _scoutingStandardSeedCornMostRecentInspection;
  final String? _detasselingStandardSeedCornMostRecentInspection;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  FieldChildModelIdentifier get modelIdentifier {
      return FieldChildModelIdentifier(
        id: id
      );
  }
  
  String get seasonID {
    try {
      return _seasonID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get fieldparentID {
    try {
      return _fieldparentID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get hybridID {
    try {
      return _hybridID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool? get isCertified {
    return _isCertified;
  }
  
  List<GrowerShareObject> get growerShares {
    try {
      return _growerShares!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  FieldAcresObject get acres {
    try {
      return _acres!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<PlantingDateObject> get plantingDates {
    try {
      return _plantingDates!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<InspectionParent>? get InspectionParents {
    return _InspectionParents;
  }
  
  String get fieldName {
    try {
      return _fieldName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get fieldNumber {
    try {
      return _fieldNumber!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get hybridName {
    try {
      return _hybridName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<InspectionConfigurationObject>? get inspectionConfigurations {
    return _inspectionConfigurations;
  }
  
  TemporalDate? get detasselingStandardSeedCornApprovalDate {
    return _detasselingStandardSeedCornApprovalDate;
  }
  
  TemporalDate? get leafToTasselStandardSeedCornApprovalDate {
    return _leafToTasselStandardSeedCornApprovalDate;
  }
  
  TemporalDate? get populationsStandardSeedCornApprovalDate {
    return _populationsStandardSeedCornApprovalDate;
  }
  
  TemporalDate? get scoutingStandardSeedCornApprovalDate {
    return _scoutingStandardSeedCornApprovalDate;
  }
  
  String? get detasselingStandardSeedCornApprovalUserProfile {
    return _detasselingStandardSeedCornApprovalUserProfile;
  }
  
  String? get leafToTasselStandardSeedCornApprovalUserProfile {
    return _leafToTasselStandardSeedCornApprovalUserProfile;
  }
  
  String? get populationsStandardSeedCornApprovalUserProfile {
    return _populationsStandardSeedCornApprovalUserProfile;
  }
  
  String? get scoutingStandardSeedCornApprovalUserProfile {
    return _scoutingStandardSeedCornApprovalUserProfile;
  }
  
  int? get detasselingStandardSeedCornRequiredInspections {
    return _detasselingStandardSeedCornRequiredInspections;
  }
  
  int? get leafToTasselStandardSeedCornRequiredInspections {
    return _leafToTasselStandardSeedCornRequiredInspections;
  }
  
  int? get populationsStandardSeedCornRequiredInspections {
    return _populationsStandardSeedCornRequiredInspections;
  }
  
  int? get scoutingStandardSeedCornRequiredInspections {
    return _scoutingStandardSeedCornRequiredInspections;
  }
  
  InspectionStatusKey? get detasselingStandardSeedCornInspectionStatus {
    return _detasselingStandardSeedCornInspectionStatus;
  }
  
  InspectionStatusKey? get leafToTasselStandardSeedCornInspectionStatus {
    return _leafToTasselStandardSeedCornInspectionStatus;
  }
  
  InspectionStatusKey? get populationsStandardSeedCornInspectionStatus {
    return _populationsStandardSeedCornInspectionStatus;
  }
  
  InspectionStatusKey? get scoutingStandardSeedCornInspectionStatus {
    return _scoutingStandardSeedCornInspectionStatus;
  }
  
  InspectionFormTypeKey? get leafToTasselStandardSeedCornInspectionType {
    return _leafToTasselStandardSeedCornInspectionType;
  }
  
  InspectionFormTypeKey? get populationsStandardSeedCornInspectionType {
    return _populationsStandardSeedCornInspectionType;
  }
  
  InspectionFormTypeKey? get scoutingStandardSeedCornInspectionType {
    return _scoutingStandardSeedCornInspectionType;
  }
  
  InspectionFormTypeKey? get detasselingStandardSeedCornInspectionType {
    return _detasselingStandardSeedCornInspectionType;
  }
  
  String? get leafToTasselStandardSeedCornMostRecentInspection {
    return _leafToTasselStandardSeedCornMostRecentInspection;
  }
  
  String? get populationsStandardSeedCornMostRecentInspection {
    return _populationsStandardSeedCornMostRecentInspection;
  }
  
  String? get scoutingStandardSeedCornMostRecentInspection {
    return _scoutingStandardSeedCornMostRecentInspection;
  }
  
  String? get detasselingStandardSeedCornMostRecentInspection {
    return _detasselingStandardSeedCornMostRecentInspection;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const FieldChild._internal({required this.id, required seasonID, required fieldparentID, required hybridID, isCertified, required growerShares, required acres, required plantingDates, InspectionParents, required fieldName, required fieldNumber, required hybridName, inspectionConfigurations, detasselingStandardSeedCornApprovalDate, leafToTasselStandardSeedCornApprovalDate, populationsStandardSeedCornApprovalDate, scoutingStandardSeedCornApprovalDate, detasselingStandardSeedCornApprovalUserProfile, leafToTasselStandardSeedCornApprovalUserProfile, populationsStandardSeedCornApprovalUserProfile, scoutingStandardSeedCornApprovalUserProfile, detasselingStandardSeedCornRequiredInspections, leafToTasselStandardSeedCornRequiredInspections, populationsStandardSeedCornRequiredInspections, scoutingStandardSeedCornRequiredInspections, detasselingStandardSeedCornInspectionStatus, leafToTasselStandardSeedCornInspectionStatus, populationsStandardSeedCornInspectionStatus, scoutingStandardSeedCornInspectionStatus, leafToTasselStandardSeedCornInspectionType, populationsStandardSeedCornInspectionType, scoutingStandardSeedCornInspectionType, detasselingStandardSeedCornInspectionType, leafToTasselStandardSeedCornMostRecentInspection, populationsStandardSeedCornMostRecentInspection, scoutingStandardSeedCornMostRecentInspection, detasselingStandardSeedCornMostRecentInspection, createdAt, updatedAt}): _seasonID = seasonID, _fieldparentID = fieldparentID, _hybridID = hybridID, _isCertified = isCertified, _growerShares = growerShares, _acres = acres, _plantingDates = plantingDates, _InspectionParents = InspectionParents, _fieldName = fieldName, _fieldNumber = fieldNumber, _hybridName = hybridName, _inspectionConfigurations = inspectionConfigurations, _detasselingStandardSeedCornApprovalDate = detasselingStandardSeedCornApprovalDate, _leafToTasselStandardSeedCornApprovalDate = leafToTasselStandardSeedCornApprovalDate, _populationsStandardSeedCornApprovalDate = populationsStandardSeedCornApprovalDate, _scoutingStandardSeedCornApprovalDate = scoutingStandardSeedCornApprovalDate, _detasselingStandardSeedCornApprovalUserProfile = detasselingStandardSeedCornApprovalUserProfile, _leafToTasselStandardSeedCornApprovalUserProfile = leafToTasselStandardSeedCornApprovalUserProfile, _populationsStandardSeedCornApprovalUserProfile = populationsStandardSeedCornApprovalUserProfile, _scoutingStandardSeedCornApprovalUserProfile = scoutingStandardSeedCornApprovalUserProfile, _detasselingStandardSeedCornRequiredInspections = detasselingStandardSeedCornRequiredInspections, _leafToTasselStandardSeedCornRequiredInspections = leafToTasselStandardSeedCornRequiredInspections, _populationsStandardSeedCornRequiredInspections = populationsStandardSeedCornRequiredInspections, _scoutingStandardSeedCornRequiredInspections = scoutingStandardSeedCornRequiredInspections, _detasselingStandardSeedCornInspectionStatus = detasselingStandardSeedCornInspectionStatus, _leafToTasselStandardSeedCornInspectionStatus = leafToTasselStandardSeedCornInspectionStatus, _populationsStandardSeedCornInspectionStatus = populationsStandardSeedCornInspectionStatus, _scoutingStandardSeedCornInspectionStatus = scoutingStandardSeedCornInspectionStatus, _leafToTasselStandardSeedCornInspectionType = leafToTasselStandardSeedCornInspectionType, _populationsStandardSeedCornInspectionType = populationsStandardSeedCornInspectionType, _scoutingStandardSeedCornInspectionType = scoutingStandardSeedCornInspectionType, _detasselingStandardSeedCornInspectionType = detasselingStandardSeedCornInspectionType, _leafToTasselStandardSeedCornMostRecentInspection = leafToTasselStandardSeedCornMostRecentInspection, _populationsStandardSeedCornMostRecentInspection = populationsStandardSeedCornMostRecentInspection, _scoutingStandardSeedCornMostRecentInspection = scoutingStandardSeedCornMostRecentInspection, _detasselingStandardSeedCornMostRecentInspection = detasselingStandardSeedCornMostRecentInspection, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory FieldChild({String? id, required String seasonID, required String fieldparentID, required String hybridID, bool? isCertified, required List<GrowerShareObject> growerShares, required FieldAcresObject acres, required List<PlantingDateObject> plantingDates, List<InspectionParent>? InspectionParents, required String fieldName, required String fieldNumber, required String hybridName, List<InspectionConfigurationObject>? inspectionConfigurations, TemporalDate? detasselingStandardSeedCornApprovalDate, TemporalDate? leafToTasselStandardSeedCornApprovalDate, TemporalDate? populationsStandardSeedCornApprovalDate, TemporalDate? scoutingStandardSeedCornApprovalDate, String? detasselingStandardSeedCornApprovalUserProfile, String? leafToTasselStandardSeedCornApprovalUserProfile, String? populationsStandardSeedCornApprovalUserProfile, String? scoutingStandardSeedCornApprovalUserProfile, int? detasselingStandardSeedCornRequiredInspections, int? leafToTasselStandardSeedCornRequiredInspections, int? populationsStandardSeedCornRequiredInspections, int? scoutingStandardSeedCornRequiredInspections, InspectionStatusKey? detasselingStandardSeedCornInspectionStatus, InspectionStatusKey? leafToTasselStandardSeedCornInspectionStatus, InspectionStatusKey? populationsStandardSeedCornInspectionStatus, InspectionStatusKey? scoutingStandardSeedCornInspectionStatus, InspectionFormTypeKey? leafToTasselStandardSeedCornInspectionType, InspectionFormTypeKey? populationsStandardSeedCornInspectionType, InspectionFormTypeKey? scoutingStandardSeedCornInspectionType, InspectionFormTypeKey? detasselingStandardSeedCornInspectionType, String? leafToTasselStandardSeedCornMostRecentInspection, String? populationsStandardSeedCornMostRecentInspection, String? scoutingStandardSeedCornMostRecentInspection, String? detasselingStandardSeedCornMostRecentInspection}) {
    return FieldChild._internal(
      id: id == null ? UUID.getUUID() : id,
      seasonID: seasonID,
      fieldparentID: fieldparentID,
      hybridID: hybridID,
      isCertified: isCertified,
      growerShares: growerShares != null ? List<GrowerShareObject>.unmodifiable(growerShares) : growerShares,
      acres: acres,
      plantingDates: plantingDates != null ? List<PlantingDateObject>.unmodifiable(plantingDates) : plantingDates,
      InspectionParents: InspectionParents != null ? List<InspectionParent>.unmodifiable(InspectionParents) : InspectionParents,
      fieldName: fieldName,
      fieldNumber: fieldNumber,
      hybridName: hybridName,
      inspectionConfigurations: inspectionConfigurations != null ? List<InspectionConfigurationObject>.unmodifiable(inspectionConfigurations) : inspectionConfigurations,
      detasselingStandardSeedCornApprovalDate: detasselingStandardSeedCornApprovalDate,
      leafToTasselStandardSeedCornApprovalDate: leafToTasselStandardSeedCornApprovalDate,
      populationsStandardSeedCornApprovalDate: populationsStandardSeedCornApprovalDate,
      scoutingStandardSeedCornApprovalDate: scoutingStandardSeedCornApprovalDate,
      detasselingStandardSeedCornApprovalUserProfile: detasselingStandardSeedCornApprovalUserProfile,
      leafToTasselStandardSeedCornApprovalUserProfile: leafToTasselStandardSeedCornApprovalUserProfile,
      populationsStandardSeedCornApprovalUserProfile: populationsStandardSeedCornApprovalUserProfile,
      scoutingStandardSeedCornApprovalUserProfile: scoutingStandardSeedCornApprovalUserProfile,
      detasselingStandardSeedCornRequiredInspections: detasselingStandardSeedCornRequiredInspections,
      leafToTasselStandardSeedCornRequiredInspections: leafToTasselStandardSeedCornRequiredInspections,
      populationsStandardSeedCornRequiredInspections: populationsStandardSeedCornRequiredInspections,
      scoutingStandardSeedCornRequiredInspections: scoutingStandardSeedCornRequiredInspections,
      detasselingStandardSeedCornInspectionStatus: detasselingStandardSeedCornInspectionStatus,
      leafToTasselStandardSeedCornInspectionStatus: leafToTasselStandardSeedCornInspectionStatus,
      populationsStandardSeedCornInspectionStatus: populationsStandardSeedCornInspectionStatus,
      scoutingStandardSeedCornInspectionStatus: scoutingStandardSeedCornInspectionStatus,
      leafToTasselStandardSeedCornInspectionType: leafToTasselStandardSeedCornInspectionType,
      populationsStandardSeedCornInspectionType: populationsStandardSeedCornInspectionType,
      scoutingStandardSeedCornInspectionType: scoutingStandardSeedCornInspectionType,
      detasselingStandardSeedCornInspectionType: detasselingStandardSeedCornInspectionType,
      leafToTasselStandardSeedCornMostRecentInspection: leafToTasselStandardSeedCornMostRecentInspection,
      populationsStandardSeedCornMostRecentInspection: populationsStandardSeedCornMostRecentInspection,
      scoutingStandardSeedCornMostRecentInspection: scoutingStandardSeedCornMostRecentInspection,
      detasselingStandardSeedCornMostRecentInspection: detasselingStandardSeedCornMostRecentInspection);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldChild &&
      id == other.id &&
      _seasonID == other._seasonID &&
      _fieldparentID == other._fieldparentID &&
      _hybridID == other._hybridID &&
      _isCertified == other._isCertified &&
      DeepCollectionEquality().equals(_growerShares, other._growerShares) &&
      _acres == other._acres &&
      DeepCollectionEquality().equals(_plantingDates, other._plantingDates) &&
      DeepCollectionEquality().equals(_InspectionParents, other._InspectionParents) &&
      _fieldName == other._fieldName &&
      _fieldNumber == other._fieldNumber &&
      _hybridName == other._hybridName &&
      DeepCollectionEquality().equals(_inspectionConfigurations, other._inspectionConfigurations) &&
      _detasselingStandardSeedCornApprovalDate == other._detasselingStandardSeedCornApprovalDate &&
      _leafToTasselStandardSeedCornApprovalDate == other._leafToTasselStandardSeedCornApprovalDate &&
      _populationsStandardSeedCornApprovalDate == other._populationsStandardSeedCornApprovalDate &&
      _scoutingStandardSeedCornApprovalDate == other._scoutingStandardSeedCornApprovalDate &&
      _detasselingStandardSeedCornApprovalUserProfile == other._detasselingStandardSeedCornApprovalUserProfile &&
      _leafToTasselStandardSeedCornApprovalUserProfile == other._leafToTasselStandardSeedCornApprovalUserProfile &&
      _populationsStandardSeedCornApprovalUserProfile == other._populationsStandardSeedCornApprovalUserProfile &&
      _scoutingStandardSeedCornApprovalUserProfile == other._scoutingStandardSeedCornApprovalUserProfile &&
      _detasselingStandardSeedCornRequiredInspections == other._detasselingStandardSeedCornRequiredInspections &&
      _leafToTasselStandardSeedCornRequiredInspections == other._leafToTasselStandardSeedCornRequiredInspections &&
      _populationsStandardSeedCornRequiredInspections == other._populationsStandardSeedCornRequiredInspections &&
      _scoutingStandardSeedCornRequiredInspections == other._scoutingStandardSeedCornRequiredInspections &&
      _detasselingStandardSeedCornInspectionStatus == other._detasselingStandardSeedCornInspectionStatus &&
      _leafToTasselStandardSeedCornInspectionStatus == other._leafToTasselStandardSeedCornInspectionStatus &&
      _populationsStandardSeedCornInspectionStatus == other._populationsStandardSeedCornInspectionStatus &&
      _scoutingStandardSeedCornInspectionStatus == other._scoutingStandardSeedCornInspectionStatus &&
      _leafToTasselStandardSeedCornInspectionType == other._leafToTasselStandardSeedCornInspectionType &&
      _populationsStandardSeedCornInspectionType == other._populationsStandardSeedCornInspectionType &&
      _scoutingStandardSeedCornInspectionType == other._scoutingStandardSeedCornInspectionType &&
      _detasselingStandardSeedCornInspectionType == other._detasselingStandardSeedCornInspectionType &&
      _leafToTasselStandardSeedCornMostRecentInspection == other._leafToTasselStandardSeedCornMostRecentInspection &&
      _populationsStandardSeedCornMostRecentInspection == other._populationsStandardSeedCornMostRecentInspection &&
      _scoutingStandardSeedCornMostRecentInspection == other._scoutingStandardSeedCornMostRecentInspection &&
      _detasselingStandardSeedCornMostRecentInspection == other._detasselingStandardSeedCornMostRecentInspection;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FieldChild {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("seasonID=" + "$_seasonID" + ", ");
    buffer.write("fieldparentID=" + "$_fieldparentID" + ", ");
    buffer.write("hybridID=" + "$_hybridID" + ", ");
    buffer.write("isCertified=" + (_isCertified != null ? _isCertified!.toString() : "null") + ", ");
    buffer.write("growerShares=" + (_growerShares != null ? _growerShares!.toString() : "null") + ", ");
    buffer.write("acres=" + (_acres != null ? _acres!.toString() : "null") + ", ");
    buffer.write("plantingDates=" + (_plantingDates != null ? _plantingDates!.toString() : "null") + ", ");
    buffer.write("fieldName=" + "$_fieldName" + ", ");
    buffer.write("fieldNumber=" + "$_fieldNumber" + ", ");
    buffer.write("hybridName=" + "$_hybridName" + ", ");
    buffer.write("inspectionConfigurations=" + (_inspectionConfigurations != null ? _inspectionConfigurations!.toString() : "null") + ", ");
    buffer.write("detasselingStandardSeedCornApprovalDate=" + (_detasselingStandardSeedCornApprovalDate != null ? _detasselingStandardSeedCornApprovalDate!.format() : "null") + ", ");
    buffer.write("leafToTasselStandardSeedCornApprovalDate=" + (_leafToTasselStandardSeedCornApprovalDate != null ? _leafToTasselStandardSeedCornApprovalDate!.format() : "null") + ", ");
    buffer.write("populationsStandardSeedCornApprovalDate=" + (_populationsStandardSeedCornApprovalDate != null ? _populationsStandardSeedCornApprovalDate!.format() : "null") + ", ");
    buffer.write("scoutingStandardSeedCornApprovalDate=" + (_scoutingStandardSeedCornApprovalDate != null ? _scoutingStandardSeedCornApprovalDate!.format() : "null") + ", ");
    buffer.write("detasselingStandardSeedCornApprovalUserProfile=" + "$_detasselingStandardSeedCornApprovalUserProfile" + ", ");
    buffer.write("leafToTasselStandardSeedCornApprovalUserProfile=" + "$_leafToTasselStandardSeedCornApprovalUserProfile" + ", ");
    buffer.write("populationsStandardSeedCornApprovalUserProfile=" + "$_populationsStandardSeedCornApprovalUserProfile" + ", ");
    buffer.write("scoutingStandardSeedCornApprovalUserProfile=" + "$_scoutingStandardSeedCornApprovalUserProfile" + ", ");
    buffer.write("detasselingStandardSeedCornRequiredInspections=" + (_detasselingStandardSeedCornRequiredInspections != null ? _detasselingStandardSeedCornRequiredInspections!.toString() : "null") + ", ");
    buffer.write("leafToTasselStandardSeedCornRequiredInspections=" + (_leafToTasselStandardSeedCornRequiredInspections != null ? _leafToTasselStandardSeedCornRequiredInspections!.toString() : "null") + ", ");
    buffer.write("populationsStandardSeedCornRequiredInspections=" + (_populationsStandardSeedCornRequiredInspections != null ? _populationsStandardSeedCornRequiredInspections!.toString() : "null") + ", ");
    buffer.write("scoutingStandardSeedCornRequiredInspections=" + (_scoutingStandardSeedCornRequiredInspections != null ? _scoutingStandardSeedCornRequiredInspections!.toString() : "null") + ", ");
    buffer.write("detasselingStandardSeedCornInspectionStatus=" + (_detasselingStandardSeedCornInspectionStatus != null ? enumToString(_detasselingStandardSeedCornInspectionStatus)! : "null") + ", ");
    buffer.write("leafToTasselStandardSeedCornInspectionStatus=" + (_leafToTasselStandardSeedCornInspectionStatus != null ? enumToString(_leafToTasselStandardSeedCornInspectionStatus)! : "null") + ", ");
    buffer.write("populationsStandardSeedCornInspectionStatus=" + (_populationsStandardSeedCornInspectionStatus != null ? enumToString(_populationsStandardSeedCornInspectionStatus)! : "null") + ", ");
    buffer.write("scoutingStandardSeedCornInspectionStatus=" + (_scoutingStandardSeedCornInspectionStatus != null ? enumToString(_scoutingStandardSeedCornInspectionStatus)! : "null") + ", ");
    buffer.write("leafToTasselStandardSeedCornInspectionType=" + (_leafToTasselStandardSeedCornInspectionType != null ? enumToString(_leafToTasselStandardSeedCornInspectionType)! : "null") + ", ");
    buffer.write("populationsStandardSeedCornInspectionType=" + (_populationsStandardSeedCornInspectionType != null ? enumToString(_populationsStandardSeedCornInspectionType)! : "null") + ", ");
    buffer.write("scoutingStandardSeedCornInspectionType=" + (_scoutingStandardSeedCornInspectionType != null ? enumToString(_scoutingStandardSeedCornInspectionType)! : "null") + ", ");
    buffer.write("detasselingStandardSeedCornInspectionType=" + (_detasselingStandardSeedCornInspectionType != null ? enumToString(_detasselingStandardSeedCornInspectionType)! : "null") + ", ");
    buffer.write("leafToTasselStandardSeedCornMostRecentInspection=" + "$_leafToTasselStandardSeedCornMostRecentInspection" + ", ");
    buffer.write("populationsStandardSeedCornMostRecentInspection=" + "$_populationsStandardSeedCornMostRecentInspection" + ", ");
    buffer.write("scoutingStandardSeedCornMostRecentInspection=" + "$_scoutingStandardSeedCornMostRecentInspection" + ", ");
    buffer.write("detasselingStandardSeedCornMostRecentInspection=" + "$_detasselingStandardSeedCornMostRecentInspection" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FieldChild copyWith({String? seasonID, String? fieldparentID, String? hybridID, bool? isCertified, List<GrowerShareObject>? growerShares, FieldAcresObject? acres, List<PlantingDateObject>? plantingDates, List<InspectionParent>? InspectionParents, String? fieldName, String? fieldNumber, String? hybridName, List<InspectionConfigurationObject>? inspectionConfigurations, TemporalDate? detasselingStandardSeedCornApprovalDate, TemporalDate? leafToTasselStandardSeedCornApprovalDate, TemporalDate? populationsStandardSeedCornApprovalDate, TemporalDate? scoutingStandardSeedCornApprovalDate, String? detasselingStandardSeedCornApprovalUserProfile, String? leafToTasselStandardSeedCornApprovalUserProfile, String? populationsStandardSeedCornApprovalUserProfile, String? scoutingStandardSeedCornApprovalUserProfile, int? detasselingStandardSeedCornRequiredInspections, int? leafToTasselStandardSeedCornRequiredInspections, int? populationsStandardSeedCornRequiredInspections, int? scoutingStandardSeedCornRequiredInspections, InspectionStatusKey? detasselingStandardSeedCornInspectionStatus, InspectionStatusKey? leafToTasselStandardSeedCornInspectionStatus, InspectionStatusKey? populationsStandardSeedCornInspectionStatus, InspectionStatusKey? scoutingStandardSeedCornInspectionStatus, InspectionFormTypeKey? leafToTasselStandardSeedCornInspectionType, InspectionFormTypeKey? populationsStandardSeedCornInspectionType, InspectionFormTypeKey? scoutingStandardSeedCornInspectionType, InspectionFormTypeKey? detasselingStandardSeedCornInspectionType, String? leafToTasselStandardSeedCornMostRecentInspection, String? populationsStandardSeedCornMostRecentInspection, String? scoutingStandardSeedCornMostRecentInspection, String? detasselingStandardSeedCornMostRecentInspection}) {
    return FieldChild._internal(
      id: id,
      seasonID: seasonID ?? this.seasonID,
      fieldparentID: fieldparentID ?? this.fieldparentID,
      hybridID: hybridID ?? this.hybridID,
      isCertified: isCertified ?? this.isCertified,
      growerShares: growerShares ?? this.growerShares,
      acres: acres ?? this.acres,
      plantingDates: plantingDates ?? this.plantingDates,
      InspectionParents: InspectionParents ?? this.InspectionParents,
      fieldName: fieldName ?? this.fieldName,
      fieldNumber: fieldNumber ?? this.fieldNumber,
      hybridName: hybridName ?? this.hybridName,
      inspectionConfigurations: inspectionConfigurations ?? this.inspectionConfigurations,
      detasselingStandardSeedCornApprovalDate: detasselingStandardSeedCornApprovalDate ?? this.detasselingStandardSeedCornApprovalDate,
      leafToTasselStandardSeedCornApprovalDate: leafToTasselStandardSeedCornApprovalDate ?? this.leafToTasselStandardSeedCornApprovalDate,
      populationsStandardSeedCornApprovalDate: populationsStandardSeedCornApprovalDate ?? this.populationsStandardSeedCornApprovalDate,
      scoutingStandardSeedCornApprovalDate: scoutingStandardSeedCornApprovalDate ?? this.scoutingStandardSeedCornApprovalDate,
      detasselingStandardSeedCornApprovalUserProfile: detasselingStandardSeedCornApprovalUserProfile ?? this.detasselingStandardSeedCornApprovalUserProfile,
      leafToTasselStandardSeedCornApprovalUserProfile: leafToTasselStandardSeedCornApprovalUserProfile ?? this.leafToTasselStandardSeedCornApprovalUserProfile,
      populationsStandardSeedCornApprovalUserProfile: populationsStandardSeedCornApprovalUserProfile ?? this.populationsStandardSeedCornApprovalUserProfile,
      scoutingStandardSeedCornApprovalUserProfile: scoutingStandardSeedCornApprovalUserProfile ?? this.scoutingStandardSeedCornApprovalUserProfile,
      detasselingStandardSeedCornRequiredInspections: detasselingStandardSeedCornRequiredInspections ?? this.detasselingStandardSeedCornRequiredInspections,
      leafToTasselStandardSeedCornRequiredInspections: leafToTasselStandardSeedCornRequiredInspections ?? this.leafToTasselStandardSeedCornRequiredInspections,
      populationsStandardSeedCornRequiredInspections: populationsStandardSeedCornRequiredInspections ?? this.populationsStandardSeedCornRequiredInspections,
      scoutingStandardSeedCornRequiredInspections: scoutingStandardSeedCornRequiredInspections ?? this.scoutingStandardSeedCornRequiredInspections,
      detasselingStandardSeedCornInspectionStatus: detasselingStandardSeedCornInspectionStatus ?? this.detasselingStandardSeedCornInspectionStatus,
      leafToTasselStandardSeedCornInspectionStatus: leafToTasselStandardSeedCornInspectionStatus ?? this.leafToTasselStandardSeedCornInspectionStatus,
      populationsStandardSeedCornInspectionStatus: populationsStandardSeedCornInspectionStatus ?? this.populationsStandardSeedCornInspectionStatus,
      scoutingStandardSeedCornInspectionStatus: scoutingStandardSeedCornInspectionStatus ?? this.scoutingStandardSeedCornInspectionStatus,
      leafToTasselStandardSeedCornInspectionType: leafToTasselStandardSeedCornInspectionType ?? this.leafToTasselStandardSeedCornInspectionType,
      populationsStandardSeedCornInspectionType: populationsStandardSeedCornInspectionType ?? this.populationsStandardSeedCornInspectionType,
      scoutingStandardSeedCornInspectionType: scoutingStandardSeedCornInspectionType ?? this.scoutingStandardSeedCornInspectionType,
      detasselingStandardSeedCornInspectionType: detasselingStandardSeedCornInspectionType ?? this.detasselingStandardSeedCornInspectionType,
      leafToTasselStandardSeedCornMostRecentInspection: leafToTasselStandardSeedCornMostRecentInspection ?? this.leafToTasselStandardSeedCornMostRecentInspection,
      populationsStandardSeedCornMostRecentInspection: populationsStandardSeedCornMostRecentInspection ?? this.populationsStandardSeedCornMostRecentInspection,
      scoutingStandardSeedCornMostRecentInspection: scoutingStandardSeedCornMostRecentInspection ?? this.scoutingStandardSeedCornMostRecentInspection,
      detasselingStandardSeedCornMostRecentInspection: detasselingStandardSeedCornMostRecentInspection ?? this.detasselingStandardSeedCornMostRecentInspection);
  }
  
  FieldChild.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _seasonID = json['seasonID'],
      _fieldparentID = json['fieldparentID'],
      _hybridID = json['hybridID'],
      _isCertified = json['isCertified'],
      _growerShares = json['growerShares'] is List
        ? (json['growerShares'] as List)
          .where((e) => e != null)
          .map((e) => GrowerShareObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _acres = json['acres']?['serializedData'] != null
        ? FieldAcresObject.fromJson(new Map<String, dynamic>.from(json['acres']['serializedData']))
        : null,
      _plantingDates = json['plantingDates'] is List
        ? (json['plantingDates'] as List)
          .where((e) => e != null)
          .map((e) => PlantingDateObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _InspectionParents = json['InspectionParents'] is List
        ? (json['InspectionParents'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => InspectionParent.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _fieldName = json['fieldName'],
      _fieldNumber = json['fieldNumber'],
      _hybridName = json['hybridName'],
      _inspectionConfigurations = json['inspectionConfigurations'] is List
        ? (json['inspectionConfigurations'] as List)
          .where((e) => e != null)
          .map((e) => InspectionConfigurationObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _detasselingStandardSeedCornApprovalDate = json['detasselingStandardSeedCornApprovalDate'] != null ? TemporalDate.fromString(json['detasselingStandardSeedCornApprovalDate']) : null,
      _leafToTasselStandardSeedCornApprovalDate = json['leafToTasselStandardSeedCornApprovalDate'] != null ? TemporalDate.fromString(json['leafToTasselStandardSeedCornApprovalDate']) : null,
      _populationsStandardSeedCornApprovalDate = json['populationsStandardSeedCornApprovalDate'] != null ? TemporalDate.fromString(json['populationsStandardSeedCornApprovalDate']) : null,
      _scoutingStandardSeedCornApprovalDate = json['scoutingStandardSeedCornApprovalDate'] != null ? TemporalDate.fromString(json['scoutingStandardSeedCornApprovalDate']) : null,
      _detasselingStandardSeedCornApprovalUserProfile = json['detasselingStandardSeedCornApprovalUserProfile'],
      _leafToTasselStandardSeedCornApprovalUserProfile = json['leafToTasselStandardSeedCornApprovalUserProfile'],
      _populationsStandardSeedCornApprovalUserProfile = json['populationsStandardSeedCornApprovalUserProfile'],
      _scoutingStandardSeedCornApprovalUserProfile = json['scoutingStandardSeedCornApprovalUserProfile'],
      _detasselingStandardSeedCornRequiredInspections = (json['detasselingStandardSeedCornRequiredInspections'] as num?)?.toInt(),
      _leafToTasselStandardSeedCornRequiredInspections = (json['leafToTasselStandardSeedCornRequiredInspections'] as num?)?.toInt(),
      _populationsStandardSeedCornRequiredInspections = (json['populationsStandardSeedCornRequiredInspections'] as num?)?.toInt(),
      _scoutingStandardSeedCornRequiredInspections = (json['scoutingStandardSeedCornRequiredInspections'] as num?)?.toInt(),
      _detasselingStandardSeedCornInspectionStatus = enumFromString<InspectionStatusKey>(json['detasselingStandardSeedCornInspectionStatus'], InspectionStatusKey.values),
      _leafToTasselStandardSeedCornInspectionStatus = enumFromString<InspectionStatusKey>(json['leafToTasselStandardSeedCornInspectionStatus'], InspectionStatusKey.values),
      _populationsStandardSeedCornInspectionStatus = enumFromString<InspectionStatusKey>(json['populationsStandardSeedCornInspectionStatus'], InspectionStatusKey.values),
      _scoutingStandardSeedCornInspectionStatus = enumFromString<InspectionStatusKey>(json['scoutingStandardSeedCornInspectionStatus'], InspectionStatusKey.values),
      _leafToTasselStandardSeedCornInspectionType = enumFromString<InspectionFormTypeKey>(json['leafToTasselStandardSeedCornInspectionType'], InspectionFormTypeKey.values),
      _populationsStandardSeedCornInspectionType = enumFromString<InspectionFormTypeKey>(json['populationsStandardSeedCornInspectionType'], InspectionFormTypeKey.values),
      _scoutingStandardSeedCornInspectionType = enumFromString<InspectionFormTypeKey>(json['scoutingStandardSeedCornInspectionType'], InspectionFormTypeKey.values),
      _detasselingStandardSeedCornInspectionType = enumFromString<InspectionFormTypeKey>(json['detasselingStandardSeedCornInspectionType'], InspectionFormTypeKey.values),
      _leafToTasselStandardSeedCornMostRecentInspection = json['leafToTasselStandardSeedCornMostRecentInspection'],
      _populationsStandardSeedCornMostRecentInspection = json['populationsStandardSeedCornMostRecentInspection'],
      _scoutingStandardSeedCornMostRecentInspection = json['scoutingStandardSeedCornMostRecentInspection'],
      _detasselingStandardSeedCornMostRecentInspection = json['detasselingStandardSeedCornMostRecentInspection'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'seasonID': _seasonID, 'fieldparentID': _fieldparentID, 'hybridID': _hybridID, 'isCertified': _isCertified, 'growerShares': _growerShares?.map((GrowerShareObject? e) => e?.toJson()).toList(), 'acres': _acres?.toJson(), 'plantingDates': _plantingDates?.map((PlantingDateObject? e) => e?.toJson()).toList(), 'InspectionParents': _InspectionParents?.map((InspectionParent? e) => e?.toJson()).toList(), 'fieldName': _fieldName, 'fieldNumber': _fieldNumber, 'hybridName': _hybridName, 'inspectionConfigurations': _inspectionConfigurations?.map((InspectionConfigurationObject? e) => e?.toJson()).toList(), 'detasselingStandardSeedCornApprovalDate': _detasselingStandardSeedCornApprovalDate?.format(), 'leafToTasselStandardSeedCornApprovalDate': _leafToTasselStandardSeedCornApprovalDate?.format(), 'populationsStandardSeedCornApprovalDate': _populationsStandardSeedCornApprovalDate?.format(), 'scoutingStandardSeedCornApprovalDate': _scoutingStandardSeedCornApprovalDate?.format(), 'detasselingStandardSeedCornApprovalUserProfile': _detasselingStandardSeedCornApprovalUserProfile, 'leafToTasselStandardSeedCornApprovalUserProfile': _leafToTasselStandardSeedCornApprovalUserProfile, 'populationsStandardSeedCornApprovalUserProfile': _populationsStandardSeedCornApprovalUserProfile, 'scoutingStandardSeedCornApprovalUserProfile': _scoutingStandardSeedCornApprovalUserProfile, 'detasselingStandardSeedCornRequiredInspections': _detasselingStandardSeedCornRequiredInspections, 'leafToTasselStandardSeedCornRequiredInspections': _leafToTasselStandardSeedCornRequiredInspections, 'populationsStandardSeedCornRequiredInspections': _populationsStandardSeedCornRequiredInspections, 'scoutingStandardSeedCornRequiredInspections': _scoutingStandardSeedCornRequiredInspections, 'detasselingStandardSeedCornInspectionStatus': enumToString(_detasselingStandardSeedCornInspectionStatus), 'leafToTasselStandardSeedCornInspectionStatus': enumToString(_leafToTasselStandardSeedCornInspectionStatus), 'populationsStandardSeedCornInspectionStatus': enumToString(_populationsStandardSeedCornInspectionStatus), 'scoutingStandardSeedCornInspectionStatus': enumToString(_scoutingStandardSeedCornInspectionStatus), 'leafToTasselStandardSeedCornInspectionType': enumToString(_leafToTasselStandardSeedCornInspectionType), 'populationsStandardSeedCornInspectionType': enumToString(_populationsStandardSeedCornInspectionType), 'scoutingStandardSeedCornInspectionType': enumToString(_scoutingStandardSeedCornInspectionType), 'detasselingStandardSeedCornInspectionType': enumToString(_detasselingStandardSeedCornInspectionType), 'leafToTasselStandardSeedCornMostRecentInspection': _leafToTasselStandardSeedCornMostRecentInspection, 'populationsStandardSeedCornMostRecentInspection': _populationsStandardSeedCornMostRecentInspection, 'scoutingStandardSeedCornMostRecentInspection': _scoutingStandardSeedCornMostRecentInspection, 'detasselingStandardSeedCornMostRecentInspection': _detasselingStandardSeedCornMostRecentInspection, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'seasonID': _seasonID, 'fieldparentID': _fieldparentID, 'hybridID': _hybridID, 'isCertified': _isCertified, 'growerShares': _growerShares, 'acres': _acres, 'plantingDates': _plantingDates, 'InspectionParents': _InspectionParents, 'fieldName': _fieldName, 'fieldNumber': _fieldNumber, 'hybridName': _hybridName, 'inspectionConfigurations': _inspectionConfigurations, 'detasselingStandardSeedCornApprovalDate': _detasselingStandardSeedCornApprovalDate, 'leafToTasselStandardSeedCornApprovalDate': _leafToTasselStandardSeedCornApprovalDate, 'populationsStandardSeedCornApprovalDate': _populationsStandardSeedCornApprovalDate, 'scoutingStandardSeedCornApprovalDate': _scoutingStandardSeedCornApprovalDate, 'detasselingStandardSeedCornApprovalUserProfile': _detasselingStandardSeedCornApprovalUserProfile, 'leafToTasselStandardSeedCornApprovalUserProfile': _leafToTasselStandardSeedCornApprovalUserProfile, 'populationsStandardSeedCornApprovalUserProfile': _populationsStandardSeedCornApprovalUserProfile, 'scoutingStandardSeedCornApprovalUserProfile': _scoutingStandardSeedCornApprovalUserProfile, 'detasselingStandardSeedCornRequiredInspections': _detasselingStandardSeedCornRequiredInspections, 'leafToTasselStandardSeedCornRequiredInspections': _leafToTasselStandardSeedCornRequiredInspections, 'populationsStandardSeedCornRequiredInspections': _populationsStandardSeedCornRequiredInspections, 'scoutingStandardSeedCornRequiredInspections': _scoutingStandardSeedCornRequiredInspections, 'detasselingStandardSeedCornInspectionStatus': _detasselingStandardSeedCornInspectionStatus, 'leafToTasselStandardSeedCornInspectionStatus': _leafToTasselStandardSeedCornInspectionStatus, 'populationsStandardSeedCornInspectionStatus': _populationsStandardSeedCornInspectionStatus, 'scoutingStandardSeedCornInspectionStatus': _scoutingStandardSeedCornInspectionStatus, 'leafToTasselStandardSeedCornInspectionType': _leafToTasselStandardSeedCornInspectionType, 'populationsStandardSeedCornInspectionType': _populationsStandardSeedCornInspectionType, 'scoutingStandardSeedCornInspectionType': _scoutingStandardSeedCornInspectionType, 'detasselingStandardSeedCornInspectionType': _detasselingStandardSeedCornInspectionType, 'leafToTasselStandardSeedCornMostRecentInspection': _leafToTasselStandardSeedCornMostRecentInspection, 'populationsStandardSeedCornMostRecentInspection': _populationsStandardSeedCornMostRecentInspection, 'scoutingStandardSeedCornMostRecentInspection': _scoutingStandardSeedCornMostRecentInspection, 'detasselingStandardSeedCornMostRecentInspection': _detasselingStandardSeedCornMostRecentInspection, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<FieldChildModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<FieldChildModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField SEASONID = QueryField(fieldName: "seasonID");
  static final QueryField FIELDPARENTID = QueryField(fieldName: "fieldparentID");
  static final QueryField HYBRIDID = QueryField(fieldName: "hybridID");
  static final QueryField ISCERTIFIED = QueryField(fieldName: "isCertified");
  static final QueryField GROWERSHARES = QueryField(fieldName: "growerShares");
  static final QueryField ACRES = QueryField(fieldName: "acres");
  static final QueryField PLANTINGDATES = QueryField(fieldName: "plantingDates");
  static final QueryField INSPECTIONPARENTS = QueryField(
    fieldName: "InspectionParents",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'InspectionParent'));
  static final QueryField FIELDNAME = QueryField(fieldName: "fieldName");
  static final QueryField FIELDNUMBER = QueryField(fieldName: "fieldNumber");
  static final QueryField HYBRIDNAME = QueryField(fieldName: "hybridName");
  static final QueryField INSPECTIONCONFIGURATIONS = QueryField(fieldName: "inspectionConfigurations");
  static final QueryField DETASSELINGSTANDARDSEEDCORNAPPROVALDATE = QueryField(fieldName: "detasselingStandardSeedCornApprovalDate");
  static final QueryField LEAFTOTASSELSTANDARDSEEDCORNAPPROVALDATE = QueryField(fieldName: "leafToTasselStandardSeedCornApprovalDate");
  static final QueryField POPULATIONSSTANDARDSEEDCORNAPPROVALDATE = QueryField(fieldName: "populationsStandardSeedCornApprovalDate");
  static final QueryField SCOUTINGSTANDARDSEEDCORNAPPROVALDATE = QueryField(fieldName: "scoutingStandardSeedCornApprovalDate");
  static final QueryField DETASSELINGSTANDARDSEEDCORNAPPROVALUSERPROFILE = QueryField(fieldName: "detasselingStandardSeedCornApprovalUserProfile");
  static final QueryField LEAFTOTASSELSTANDARDSEEDCORNAPPROVALUSERPROFILE = QueryField(fieldName: "leafToTasselStandardSeedCornApprovalUserProfile");
  static final QueryField POPULATIONSSTANDARDSEEDCORNAPPROVALUSERPROFILE = QueryField(fieldName: "populationsStandardSeedCornApprovalUserProfile");
  static final QueryField SCOUTINGSTANDARDSEEDCORNAPPROVALUSERPROFILE = QueryField(fieldName: "scoutingStandardSeedCornApprovalUserProfile");
  static final QueryField DETASSELINGSTANDARDSEEDCORNREQUIREDINSPECTIONS = QueryField(fieldName: "detasselingStandardSeedCornRequiredInspections");
  static final QueryField LEAFTOTASSELSTANDARDSEEDCORNREQUIREDINSPECTIONS = QueryField(fieldName: "leafToTasselStandardSeedCornRequiredInspections");
  static final QueryField POPULATIONSSTANDARDSEEDCORNREQUIREDINSPECTIONS = QueryField(fieldName: "populationsStandardSeedCornRequiredInspections");
  static final QueryField SCOUTINGSTANDARDSEEDCORNREQUIREDINSPECTIONS = QueryField(fieldName: "scoutingStandardSeedCornRequiredInspections");
  static final QueryField DETASSELINGSTANDARDSEEDCORNINSPECTIONSTATUS = QueryField(fieldName: "detasselingStandardSeedCornInspectionStatus");
  static final QueryField LEAFTOTASSELSTANDARDSEEDCORNINSPECTIONSTATUS = QueryField(fieldName: "leafToTasselStandardSeedCornInspectionStatus");
  static final QueryField POPULATIONSSTANDARDSEEDCORNINSPECTIONSTATUS = QueryField(fieldName: "populationsStandardSeedCornInspectionStatus");
  static final QueryField SCOUTINGSTANDARDSEEDCORNINSPECTIONSTATUS = QueryField(fieldName: "scoutingStandardSeedCornInspectionStatus");
  static final QueryField LEAFTOTASSELSTANDARDSEEDCORNINSPECTIONTYPE = QueryField(fieldName: "leafToTasselStandardSeedCornInspectionType");
  static final QueryField POPULATIONSSTANDARDSEEDCORNINSPECTIONTYPE = QueryField(fieldName: "populationsStandardSeedCornInspectionType");
  static final QueryField SCOUTINGSTANDARDSEEDCORNINSPECTIONTYPE = QueryField(fieldName: "scoutingStandardSeedCornInspectionType");
  static final QueryField DETASSELINGSTANDARDSEEDCORNINSPECTIONTYPE = QueryField(fieldName: "detasselingStandardSeedCornInspectionType");
  static final QueryField LEAFTOTASSELSTANDARDSEEDCORNMOSTRECENTINSPECTION = QueryField(fieldName: "leafToTasselStandardSeedCornMostRecentInspection");
  static final QueryField POPULATIONSSTANDARDSEEDCORNMOSTRECENTINSPECTION = QueryField(fieldName: "populationsStandardSeedCornMostRecentInspection");
  static final QueryField SCOUTINGSTANDARDSEEDCORNMOSTRECENTINSPECTION = QueryField(fieldName: "scoutingStandardSeedCornMostRecentInspection");
  static final QueryField DETASSELINGSTANDARDSEEDCORNMOSTRECENTINSPECTION = QueryField(fieldName: "detasselingStandardSeedCornMostRecentInspection");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FieldChild";
    modelSchemaDefinition.pluralName = "FieldChildren";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["fieldparentID"], name: "byFieldParent"),
      ModelIndex(fields: const ["hybridID"], name: "byHybrid")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.SEASONID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.FIELDPARENTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.HYBRIDID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.ISCERTIFIED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'growerShares',
      isRequired: true,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'GrowerShareObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'acres',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'FieldAcresObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'plantingDates',
      isRequired: true,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'PlantingDateObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: FieldChild.INSPECTIONPARENTS,
      isRequired: false,
      ofModelName: 'InspectionParent',
      associatedKey: InspectionParent.FIELDCHILDID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.FIELDNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.FIELDNUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.HYBRIDNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'inspectionConfigurations',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'InspectionConfigurationObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.DETASSELINGSTANDARDSEEDCORNAPPROVALDATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.LEAFTOTASSELSTANDARDSEEDCORNAPPROVALDATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.POPULATIONSSTANDARDSEEDCORNAPPROVALDATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.SCOUTINGSTANDARDSEEDCORNAPPROVALDATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.DETASSELINGSTANDARDSEEDCORNAPPROVALUSERPROFILE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.LEAFTOTASSELSTANDARDSEEDCORNAPPROVALUSERPROFILE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.POPULATIONSSTANDARDSEEDCORNAPPROVALUSERPROFILE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.SCOUTINGSTANDARDSEEDCORNAPPROVALUSERPROFILE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.DETASSELINGSTANDARDSEEDCORNREQUIREDINSPECTIONS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.LEAFTOTASSELSTANDARDSEEDCORNREQUIREDINSPECTIONS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.POPULATIONSSTANDARDSEEDCORNREQUIREDINSPECTIONS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.SCOUTINGSTANDARDSEEDCORNREQUIREDINSPECTIONS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.DETASSELINGSTANDARDSEEDCORNINSPECTIONSTATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.LEAFTOTASSELSTANDARDSEEDCORNINSPECTIONSTATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.POPULATIONSSTANDARDSEEDCORNINSPECTIONSTATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.SCOUTINGSTANDARDSEEDCORNINSPECTIONSTATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.LEAFTOTASSELSTANDARDSEEDCORNINSPECTIONTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.POPULATIONSSTANDARDSEEDCORNINSPECTIONTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.SCOUTINGSTANDARDSEEDCORNINSPECTIONTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.DETASSELINGSTANDARDSEEDCORNINSPECTIONTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.LEAFTOTASSELSTANDARDSEEDCORNMOSTRECENTINSPECTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.POPULATIONSSTANDARDSEEDCORNMOSTRECENTINSPECTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.SCOUTINGSTANDARDSEEDCORNMOSTRECENTINSPECTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.DETASSELINGSTANDARDSEEDCORNMOSTRECENTINSPECTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _FieldChildModelType extends ModelType<FieldChild> {
  const _FieldChildModelType();
  
  @override
  FieldChild fromJson(Map<String, dynamic> jsonData) {
    return FieldChild.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'FieldChild';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [FieldChild] in your schema.
 */
@immutable
class FieldChildModelIdentifier implements ModelIdentifier<FieldChild> {
  final String id;

  /** Create an instance of FieldChildModelIdentifier using [id] the primary key. */
  const FieldChildModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'FieldChildModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is FieldChildModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}