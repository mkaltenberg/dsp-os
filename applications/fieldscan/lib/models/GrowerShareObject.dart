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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the GrowerShareObject type in your schema. */
@immutable
class GrowerShareObject {
  final String? _growerID;
  final double? _sharePercentage;

  String get growerID {
    try {
      return _growerID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get sharePercentage {
    try {
      return _sharePercentage!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const GrowerShareObject._internal({required growerID, required sharePercentage}): _growerID = growerID, _sharePercentage = sharePercentage;
  
  factory GrowerShareObject({required String growerID, required double sharePercentage}) {
    return GrowerShareObject._internal(
      growerID: growerID,
      sharePercentage: sharePercentage);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrowerShareObject &&
      _growerID == other._growerID &&
      _sharePercentage == other._sharePercentage;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("GrowerShareObject {");
    buffer.write("growerID=" + "$_growerID" + ", ");
    buffer.write("sharePercentage=" + (_sharePercentage != null ? _sharePercentage!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  GrowerShareObject copyWith({String? growerID, double? sharePercentage}) {
    return GrowerShareObject._internal(
      growerID: growerID ?? this.growerID,
      sharePercentage: sharePercentage ?? this.sharePercentage);
  }
  
  GrowerShareObject.fromJson(Map<String, dynamic> json)  
    : _growerID = json['growerID'],
      _sharePercentage = (json['sharePercentage'] as num?)?.toDouble();
  
  Map<String, dynamic> toJson() => {
    'growerID': _growerID, 'sharePercentage': _sharePercentage
  };
  
  Map<String, Object?> toMap() => {
    'growerID': _growerID, 'sharePercentage': _sharePercentage
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "GrowerShareObject";
    modelSchemaDefinition.pluralName = "GrowerShareObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'growerID',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'sharePercentage',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
  });
}