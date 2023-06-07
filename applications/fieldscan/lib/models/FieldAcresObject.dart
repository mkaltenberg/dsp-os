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


/** This is an auto generated class representing the FieldAcresObject type in your schema. */
@immutable
class FieldAcresObject {
  final double? _male;
  final double? _female;
  final double? _crop;
  final double? _isolation;
  final double? _headland;

  double? get male {
    return _male;
  }
  
  double? get female {
    return _female;
  }
  
  double? get crop {
    return _crop;
  }
  
  double? get isolation {
    return _isolation;
  }
  
  double? get headland {
    return _headland;
  }
  
  const FieldAcresObject._internal({male, female, crop, isolation, headland}): _male = male, _female = female, _crop = crop, _isolation = isolation, _headland = headland;
  
  factory FieldAcresObject({double? male, double? female, double? crop, double? isolation, double? headland}) {
    return FieldAcresObject._internal(
      male: male,
      female: female,
      crop: crop,
      isolation: isolation,
      headland: headland);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldAcresObject &&
      _male == other._male &&
      _female == other._female &&
      _crop == other._crop &&
      _isolation == other._isolation &&
      _headland == other._headland;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FieldAcresObject {");
    buffer.write("male=" + (_male != null ? _male!.toString() : "null") + ", ");
    buffer.write("female=" + (_female != null ? _female!.toString() : "null") + ", ");
    buffer.write("crop=" + (_crop != null ? _crop!.toString() : "null") + ", ");
    buffer.write("isolation=" + (_isolation != null ? _isolation!.toString() : "null") + ", ");
    buffer.write("headland=" + (_headland != null ? _headland!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FieldAcresObject copyWith({double? male, double? female, double? crop, double? isolation, double? headland}) {
    return FieldAcresObject._internal(
      male: male ?? this.male,
      female: female ?? this.female,
      crop: crop ?? this.crop,
      isolation: isolation ?? this.isolation,
      headland: headland ?? this.headland);
  }
  
  FieldAcresObject.fromJson(Map<String, dynamic> json)  
    : _male = (json['male'] as num?)?.toDouble(),
      _female = (json['female'] as num?)?.toDouble(),
      _crop = (json['crop'] as num?)?.toDouble(),
      _isolation = (json['isolation'] as num?)?.toDouble(),
      _headland = (json['headland'] as num?)?.toDouble();
  
  Map<String, dynamic> toJson() => {
    'male': _male, 'female': _female, 'crop': _crop, 'isolation': _isolation, 'headland': _headland
  };
  
  Map<String, Object?> toMap() => {
    'male': _male, 'female': _female, 'crop': _crop, 'isolation': _isolation, 'headland': _headland
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FieldAcresObject";
    modelSchemaDefinition.pluralName = "FieldAcresObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'male',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'female',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'crop',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'isolation',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'headland',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
  });
}