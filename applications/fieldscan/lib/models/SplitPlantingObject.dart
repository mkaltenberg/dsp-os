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


/** This is an auto generated class representing the SplitPlantingObject type in your schema. */
@immutable
class SplitPlantingObject {
  final int? _gddToThisPlanting;
  final int? _plantingNumber;
  final bool? _shouldPlantFemale;
  final bool? _shouldPlantMale;
  final String? _plantingText;

  int? get gddToThisPlanting {
    return _gddToThisPlanting;
  }
  
  int? get plantingNumber {
    return _plantingNumber;
  }
  
  bool? get shouldPlantFemale {
    return _shouldPlantFemale;
  }
  
  bool? get shouldPlantMale {
    return _shouldPlantMale;
  }
  
  String? get plantingText {
    return _plantingText;
  }
  
  const SplitPlantingObject._internal({gddToThisPlanting, plantingNumber, shouldPlantFemale, shouldPlantMale, plantingText}): _gddToThisPlanting = gddToThisPlanting, _plantingNumber = plantingNumber, _shouldPlantFemale = shouldPlantFemale, _shouldPlantMale = shouldPlantMale, _plantingText = plantingText;
  
  factory SplitPlantingObject({int? gddToThisPlanting, int? plantingNumber, bool? shouldPlantFemale, bool? shouldPlantMale, String? plantingText}) {
    return SplitPlantingObject._internal(
      gddToThisPlanting: gddToThisPlanting,
      plantingNumber: plantingNumber,
      shouldPlantFemale: shouldPlantFemale,
      shouldPlantMale: shouldPlantMale,
      plantingText: plantingText);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SplitPlantingObject &&
      _gddToThisPlanting == other._gddToThisPlanting &&
      _plantingNumber == other._plantingNumber &&
      _shouldPlantFemale == other._shouldPlantFemale &&
      _shouldPlantMale == other._shouldPlantMale &&
      _plantingText == other._plantingText;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("SplitPlantingObject {");
    buffer.write("gddToThisPlanting=" + (_gddToThisPlanting != null ? _gddToThisPlanting!.toString() : "null") + ", ");
    buffer.write("plantingNumber=" + (_plantingNumber != null ? _plantingNumber!.toString() : "null") + ", ");
    buffer.write("shouldPlantFemale=" + (_shouldPlantFemale != null ? _shouldPlantFemale!.toString() : "null") + ", ");
    buffer.write("shouldPlantMale=" + (_shouldPlantMale != null ? _shouldPlantMale!.toString() : "null") + ", ");
    buffer.write("plantingText=" + "$_plantingText");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  SplitPlantingObject copyWith({int? gddToThisPlanting, int? plantingNumber, bool? shouldPlantFemale, bool? shouldPlantMale, String? plantingText}) {
    return SplitPlantingObject._internal(
      gddToThisPlanting: gddToThisPlanting ?? this.gddToThisPlanting,
      plantingNumber: plantingNumber ?? this.plantingNumber,
      shouldPlantFemale: shouldPlantFemale ?? this.shouldPlantFemale,
      shouldPlantMale: shouldPlantMale ?? this.shouldPlantMale,
      plantingText: plantingText ?? this.plantingText);
  }
  
  SplitPlantingObject.fromJson(Map<String, dynamic> json)  
    : _gddToThisPlanting = (json['gddToThisPlanting'] as num?)?.toInt(),
      _plantingNumber = (json['plantingNumber'] as num?)?.toInt(),
      _shouldPlantFemale = json['shouldPlantFemale'],
      _shouldPlantMale = json['shouldPlantMale'],
      _plantingText = json['plantingText'];
  
  Map<String, dynamic> toJson() => {
    'gddToThisPlanting': _gddToThisPlanting, 'plantingNumber': _plantingNumber, 'shouldPlantFemale': _shouldPlantFemale, 'shouldPlantMale': _shouldPlantMale, 'plantingText': _plantingText
  };
  
  Map<String, Object?> toMap() => {
    'gddToThisPlanting': _gddToThisPlanting, 'plantingNumber': _plantingNumber, 'shouldPlantFemale': _shouldPlantFemale, 'shouldPlantMale': _shouldPlantMale, 'plantingText': _plantingText
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SplitPlantingObject";
    modelSchemaDefinition.pluralName = "SplitPlantingObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'gddToThisPlanting',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'plantingNumber',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'shouldPlantFemale',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'shouldPlantMale',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'plantingText',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}