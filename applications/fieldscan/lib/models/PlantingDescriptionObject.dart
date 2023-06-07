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


/** This is an auto generated class representing the PlantingDescriptionObject type in your schema. */
@immutable
class PlantingDescriptionObject {
  final String? _longText;
  final int? _plantingNumber;
  final String? _shortText;

  String? get longText {
    return _longText;
  }
  
  int? get plantingNumber {
    return _plantingNumber;
  }
  
  String? get shortText {
    return _shortText;
  }
  
  const PlantingDescriptionObject._internal({longText, plantingNumber, shortText}): _longText = longText, _plantingNumber = plantingNumber, _shortText = shortText;
  
  factory PlantingDescriptionObject({String? longText, int? plantingNumber, String? shortText}) {
    return PlantingDescriptionObject._internal(
      longText: longText,
      plantingNumber: plantingNumber,
      shortText: shortText);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlantingDescriptionObject &&
      _longText == other._longText &&
      _plantingNumber == other._plantingNumber &&
      _shortText == other._shortText;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PlantingDescriptionObject {");
    buffer.write("longText=" + "$_longText" + ", ");
    buffer.write("plantingNumber=" + (_plantingNumber != null ? _plantingNumber!.toString() : "null") + ", ");
    buffer.write("shortText=" + "$_shortText");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PlantingDescriptionObject copyWith({String? longText, int? plantingNumber, String? shortText}) {
    return PlantingDescriptionObject._internal(
      longText: longText ?? this.longText,
      plantingNumber: plantingNumber ?? this.plantingNumber,
      shortText: shortText ?? this.shortText);
  }
  
  PlantingDescriptionObject.fromJson(Map<String, dynamic> json)  
    : _longText = json['longText'],
      _plantingNumber = (json['plantingNumber'] as num?)?.toInt(),
      _shortText = json['shortText'];
  
  Map<String, dynamic> toJson() => {
    'longText': _longText, 'plantingNumber': _plantingNumber, 'shortText': _shortText
  };
  
  Map<String, Object?> toMap() => {
    'longText': _longText, 'plantingNumber': _plantingNumber, 'shortText': _shortText
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PlantingDescriptionObject";
    modelSchemaDefinition.pluralName = "PlantingDescriptionObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'longText',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'plantingNumber',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'shortText',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}