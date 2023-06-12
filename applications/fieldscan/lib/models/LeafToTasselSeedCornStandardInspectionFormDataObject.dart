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


/** This is an auto generated class representing the LeafToTasselSeedCornStandardInspectionFormDataObject type in your schema. */
@immutable
class LeafToTasselSeedCornStandardInspectionFormDataObject {
  final String? _comments;
  final bool? _areRoguesPresent;
  final double? _earShootLengthInches;
  final double? _inchesToSilkEmergence;
  final double? _numberOfLeaves;
  final int? _silkStage;
  final double? _tasselLengthInches;
  final double? _earLengthInches;

  String? get comments {
    return _comments;
  }
  
  bool get areRoguesPresent {
    try {
      return _areRoguesPresent!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get earShootLengthInches {
    try {
      return _earShootLengthInches!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get inchesToSilkEmergence {
    try {
      return _inchesToSilkEmergence!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get numberOfLeaves {
    try {
      return _numberOfLeaves!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get silkStage {
    try {
      return _silkStage!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get tasselLengthInches {
    try {
      return _tasselLengthInches!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get earLengthInches {
    try {
      return _earLengthInches!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const LeafToTasselSeedCornStandardInspectionFormDataObject._internal({comments, required areRoguesPresent, required earShootLengthInches, required inchesToSilkEmergence, required numberOfLeaves, required silkStage, required tasselLengthInches, required earLengthInches}): _comments = comments, _areRoguesPresent = areRoguesPresent, _earShootLengthInches = earShootLengthInches, _inchesToSilkEmergence = inchesToSilkEmergence, _numberOfLeaves = numberOfLeaves, _silkStage = silkStage, _tasselLengthInches = tasselLengthInches, _earLengthInches = earLengthInches;
  
  factory LeafToTasselSeedCornStandardInspectionFormDataObject({String? comments, required bool areRoguesPresent, required double earShootLengthInches, required double inchesToSilkEmergence, required double numberOfLeaves, required int silkStage, required double tasselLengthInches, required double earLengthInches}) {
    return LeafToTasselSeedCornStandardInspectionFormDataObject._internal(
      comments: comments,
      areRoguesPresent: areRoguesPresent,
      earShootLengthInches: earShootLengthInches,
      inchesToSilkEmergence: inchesToSilkEmergence,
      numberOfLeaves: numberOfLeaves,
      silkStage: silkStage,
      tasselLengthInches: tasselLengthInches,
      earLengthInches: earLengthInches);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeafToTasselSeedCornStandardInspectionFormDataObject &&
      _comments == other._comments &&
      _areRoguesPresent == other._areRoguesPresent &&
      _earShootLengthInches == other._earShootLengthInches &&
      _inchesToSilkEmergence == other._inchesToSilkEmergence &&
      _numberOfLeaves == other._numberOfLeaves &&
      _silkStage == other._silkStage &&
      _tasselLengthInches == other._tasselLengthInches &&
      _earLengthInches == other._earLengthInches;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("LeafToTasselSeedCornStandardInspectionFormDataObject {");
    buffer.write("comments=" + "$_comments" + ", ");
    buffer.write("areRoguesPresent=" + (_areRoguesPresent != null ? _areRoguesPresent!.toString() : "null") + ", ");
    buffer.write("earShootLengthInches=" + (_earShootLengthInches != null ? _earShootLengthInches!.toString() : "null") + ", ");
    buffer.write("inchesToSilkEmergence=" + (_inchesToSilkEmergence != null ? _inchesToSilkEmergence!.toString() : "null") + ", ");
    buffer.write("numberOfLeaves=" + (_numberOfLeaves != null ? _numberOfLeaves!.toString() : "null") + ", ");
    buffer.write("silkStage=" + (_silkStage != null ? _silkStage!.toString() : "null") + ", ");
    buffer.write("tasselLengthInches=" + (_tasselLengthInches != null ? _tasselLengthInches!.toString() : "null") + ", ");
    buffer.write("earLengthInches=" + (_earLengthInches != null ? _earLengthInches!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  LeafToTasselSeedCornStandardInspectionFormDataObject copyWith({String? comments, bool? areRoguesPresent, double? earShootLengthInches, double? inchesToSilkEmergence, double? numberOfLeaves, int? silkStage, double? tasselLengthInches, double? earLengthInches}) {
    return LeafToTasselSeedCornStandardInspectionFormDataObject._internal(
      comments: comments ?? this.comments,
      areRoguesPresent: areRoguesPresent ?? this.areRoguesPresent,
      earShootLengthInches: earShootLengthInches ?? this.earShootLengthInches,
      inchesToSilkEmergence: inchesToSilkEmergence ?? this.inchesToSilkEmergence,
      numberOfLeaves: numberOfLeaves ?? this.numberOfLeaves,
      silkStage: silkStage ?? this.silkStage,
      tasselLengthInches: tasselLengthInches ?? this.tasselLengthInches,
      earLengthInches: earLengthInches ?? this.earLengthInches);
  }
  
  LeafToTasselSeedCornStandardInspectionFormDataObject.fromJson(Map<String, dynamic> json)  
    : _comments = json['comments'],
      _areRoguesPresent = json['areRoguesPresent'],
      _earShootLengthInches = (json['earShootLengthInches'] as num?)?.toDouble(),
      _inchesToSilkEmergence = (json['inchesToSilkEmergence'] as num?)?.toDouble(),
      _numberOfLeaves = (json['numberOfLeaves'] as num?)?.toDouble(),
      _silkStage = (json['silkStage'] as num?)?.toInt(),
      _tasselLengthInches = (json['tasselLengthInches'] as num?)?.toDouble(),
      _earLengthInches = (json['earLengthInches'] as num?)?.toDouble();
  
  Map<String, dynamic> toJson() => {
    'comments': _comments, 'areRoguesPresent': _areRoguesPresent, 'earShootLengthInches': _earShootLengthInches, 'inchesToSilkEmergence': _inchesToSilkEmergence, 'numberOfLeaves': _numberOfLeaves, 'silkStage': _silkStage, 'tasselLengthInches': _tasselLengthInches, 'earLengthInches': _earLengthInches
  };
  
  Map<String, Object?> toMap() => {
    'comments': _comments, 'areRoguesPresent': _areRoguesPresent, 'earShootLengthInches': _earShootLengthInches, 'inchesToSilkEmergence': _inchesToSilkEmergence, 'numberOfLeaves': _numberOfLeaves, 'silkStage': _silkStage, 'tasselLengthInches': _tasselLengthInches, 'earLengthInches': _earLengthInches
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "LeafToTasselSeedCornStandardInspectionFormDataObject";
    modelSchemaDefinition.pluralName = "LeafToTasselSeedCornStandardInspectionFormDataObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'comments',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'areRoguesPresent',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'earShootLengthInches',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'inchesToSilkEmergence',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'numberOfLeaves',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'silkStage',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'tasselLengthInches',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'earLengthInches',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
  });
}