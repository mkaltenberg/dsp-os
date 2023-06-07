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


/** This is an auto generated class representing the PlantingDateObject type in your schema. */
@immutable
class PlantingDateObject {
  final int? _plantingNumber;
  final TemporalDate? _date;

  int? get plantingNumber {
    return _plantingNumber;
  }
  
  TemporalDate? get date {
    return _date;
  }
  
  const PlantingDateObject._internal({plantingNumber, date}): _plantingNumber = plantingNumber, _date = date;
  
  factory PlantingDateObject({int? plantingNumber, TemporalDate? date}) {
    return PlantingDateObject._internal(
      plantingNumber: plantingNumber,
      date: date);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlantingDateObject &&
      _plantingNumber == other._plantingNumber &&
      _date == other._date;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PlantingDateObject {");
    buffer.write("plantingNumber=" + (_plantingNumber != null ? _plantingNumber!.toString() : "null") + ", ");
    buffer.write("date=" + (_date != null ? _date!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PlantingDateObject copyWith({int? plantingNumber, TemporalDate? date}) {
    return PlantingDateObject._internal(
      plantingNumber: plantingNumber ?? this.plantingNumber,
      date: date ?? this.date);
  }
  
  PlantingDateObject.fromJson(Map<String, dynamic> json)  
    : _plantingNumber = (json['plantingNumber'] as num?)?.toInt(),
      _date = json['date'] != null ? TemporalDate.fromString(json['date']) : null;
  
  Map<String, dynamic> toJson() => {
    'plantingNumber': _plantingNumber, 'date': _date?.format()
  };
  
  Map<String, Object?> toMap() => {
    'plantingNumber': _plantingNumber, 'date': _date
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PlantingDateObject";
    modelSchemaDefinition.pluralName = "PlantingDateObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'plantingNumber',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'date',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
  });
}