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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the InspectionConfigurationObject type in your schema. */
@immutable
class InspectionConfigurationObject {
  final TemporalDate? _approvalDate;
  final String? _approvalUserProfile;
  final int? _requiredInspections;
  final InspectionStatusKey? _inspectionStatus;

  TemporalDate? get approvalDate {
    return _approvalDate;
  }
  
  String get approvalUserProfile {
    try {
      return _approvalUserProfile!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get requiredInspections {
    return _requiredInspections;
  }
  
  InspectionStatusKey? get inspectionStatus {
    return _inspectionStatus;
  }
  
  const InspectionConfigurationObject._internal({approvalDate, required approvalUserProfile, requiredInspections, inspectionStatus}): _approvalDate = approvalDate, _approvalUserProfile = approvalUserProfile, _requiredInspections = requiredInspections, _inspectionStatus = inspectionStatus;
  
  factory InspectionConfigurationObject({TemporalDate? approvalDate, required String approvalUserProfile, int? requiredInspections, InspectionStatusKey? inspectionStatus}) {
    return InspectionConfigurationObject._internal(
      approvalDate: approvalDate,
      approvalUserProfile: approvalUserProfile,
      requiredInspections: requiredInspections,
      inspectionStatus: inspectionStatus);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionConfigurationObject &&
      _approvalDate == other._approvalDate &&
      _approvalUserProfile == other._approvalUserProfile &&
      _requiredInspections == other._requiredInspections &&
      _inspectionStatus == other._inspectionStatus;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("InspectionConfigurationObject {");
    buffer.write("approvalDate=" + (_approvalDate != null ? _approvalDate!.format() : "null") + ", ");
    buffer.write("approvalUserProfile=" + "$_approvalUserProfile" + ", ");
    buffer.write("requiredInspections=" + (_requiredInspections != null ? _requiredInspections!.toString() : "null") + ", ");
    buffer.write("inspectionStatus=" + (_inspectionStatus != null ? enumToString(_inspectionStatus)! : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  InspectionConfigurationObject copyWith({TemporalDate? approvalDate, String? approvalUserProfile, int? requiredInspections, InspectionStatusKey? inspectionStatus}) {
    return InspectionConfigurationObject._internal(
      approvalDate: approvalDate ?? this.approvalDate,
      approvalUserProfile: approvalUserProfile ?? this.approvalUserProfile,
      requiredInspections: requiredInspections ?? this.requiredInspections,
      inspectionStatus: inspectionStatus ?? this.inspectionStatus);
  }
  
  InspectionConfigurationObject.fromJson(Map<String, dynamic> json)  
    : _approvalDate = json['approvalDate'] != null ? TemporalDate.fromString(json['approvalDate']) : null,
      _approvalUserProfile = json['approvalUserProfile'],
      _requiredInspections = (json['requiredInspections'] as num?)?.toInt(),
      _inspectionStatus = enumFromString<InspectionStatusKey>(json['inspectionStatus'], InspectionStatusKey.values);
  
  Map<String, dynamic> toJson() => {
    'approvalDate': _approvalDate?.format(), 'approvalUserProfile': _approvalUserProfile, 'requiredInspections': _requiredInspections, 'inspectionStatus': enumToString(_inspectionStatus)
  };
  
  Map<String, Object?> toMap() => {
    'approvalDate': _approvalDate, 'approvalUserProfile': _approvalUserProfile, 'requiredInspections': _requiredInspections, 'inspectionStatus': _inspectionStatus
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "InspectionConfigurationObject";
    modelSchemaDefinition.pluralName = "InspectionConfigurationObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'approvalDate',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'approvalUserProfile',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'requiredInspections',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'inspectionStatus',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
  });
}