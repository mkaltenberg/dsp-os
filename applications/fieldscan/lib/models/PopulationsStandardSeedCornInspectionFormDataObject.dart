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


/** This is an auto generated class representing the PopulationsStandardSeedCornInspectionFormDataObject type in your schema. */
@immutable
class PopulationsStandardSeedCornInspectionFormDataObject {
  final String? _comments;
  final int? _femaleCountOne;
  final int? _femaleCountTwo;
  final int? _maleCount;

  String? get comments {
    return _comments;
  }
  
  int get femaleCountOne {
    try {
      return _femaleCountOne!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get femaleCountTwo {
    try {
      return _femaleCountTwo!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get maleCount {
    try {
      return _maleCount!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const PopulationsStandardSeedCornInspectionFormDataObject._internal({comments, required femaleCountOne, required femaleCountTwo, required maleCount}): _comments = comments, _femaleCountOne = femaleCountOne, _femaleCountTwo = femaleCountTwo, _maleCount = maleCount;
  
  factory PopulationsStandardSeedCornInspectionFormDataObject({String? comments, required int femaleCountOne, required int femaleCountTwo, required int maleCount}) {
    return PopulationsStandardSeedCornInspectionFormDataObject._internal(
      comments: comments,
      femaleCountOne: femaleCountOne,
      femaleCountTwo: femaleCountTwo,
      maleCount: maleCount);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PopulationsStandardSeedCornInspectionFormDataObject &&
      _comments == other._comments &&
      _femaleCountOne == other._femaleCountOne &&
      _femaleCountTwo == other._femaleCountTwo &&
      _maleCount == other._maleCount;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PopulationsStandardSeedCornInspectionFormDataObject {");
    buffer.write("comments=" + "$_comments" + ", ");
    buffer.write("femaleCountOne=" + (_femaleCountOne != null ? _femaleCountOne!.toString() : "null") + ", ");
    buffer.write("femaleCountTwo=" + (_femaleCountTwo != null ? _femaleCountTwo!.toString() : "null") + ", ");
    buffer.write("maleCount=" + (_maleCount != null ? _maleCount!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PopulationsStandardSeedCornInspectionFormDataObject copyWith({String? comments, int? femaleCountOne, int? femaleCountTwo, int? maleCount}) {
    return PopulationsStandardSeedCornInspectionFormDataObject._internal(
      comments: comments ?? this.comments,
      femaleCountOne: femaleCountOne ?? this.femaleCountOne,
      femaleCountTwo: femaleCountTwo ?? this.femaleCountTwo,
      maleCount: maleCount ?? this.maleCount);
  }
  
  PopulationsStandardSeedCornInspectionFormDataObject.fromJson(Map<String, dynamic> json)  
    : _comments = json['comments'],
      _femaleCountOne = (json['femaleCountOne'] as num?)?.toInt(),
      _femaleCountTwo = (json['femaleCountTwo'] as num?)?.toInt(),
      _maleCount = (json['maleCount'] as num?)?.toInt();
  
  Map<String, dynamic> toJson() => {
    'comments': _comments, 'femaleCountOne': _femaleCountOne, 'femaleCountTwo': _femaleCountTwo, 'maleCount': _maleCount
  };
  
  Map<String, Object?> toMap() => {
    'comments': _comments, 'femaleCountOne': _femaleCountOne, 'femaleCountTwo': _femaleCountTwo, 'maleCount': _maleCount
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PopulationsStandardSeedCornInspectionFormDataObject";
    modelSchemaDefinition.pluralName = "PopulationsStandardSeedCornInspectionFormDataObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'comments',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'femaleCountOne',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'femaleCountTwo',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'maleCount',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
  });
}