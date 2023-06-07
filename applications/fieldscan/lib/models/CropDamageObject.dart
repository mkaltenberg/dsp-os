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


/** This is an auto generated class representing the CropDamageObject type in your schema. */
@immutable
class CropDamageObject {
  final CropTypeKey? _cropType;
  final CropDamageCategoryKey? _damageType;
  final CropDamageOption? _cropDamageOption;
  final CropDamageSeverityKey? _severity;
  final GeoPointObject? _location;
  final List<String>? _imagePaths;

  CropTypeKey? get cropType {
    return _cropType;
  }
  
  CropDamageCategoryKey? get damageType {
    return _damageType;
  }
  
  CropDamageOption? get cropDamageOption {
    return _cropDamageOption;
  }
  
  CropDamageSeverityKey? get severity {
    return _severity;
  }
  
  GeoPointObject? get location {
    return _location;
  }
  
  List<String>? get imagePaths {
    return _imagePaths;
  }
  
  const CropDamageObject._internal({cropType, damageType, cropDamageOption, severity, location, imagePaths}): _cropType = cropType, _damageType = damageType, _cropDamageOption = cropDamageOption, _severity = severity, _location = location, _imagePaths = imagePaths;
  
  factory CropDamageObject({CropTypeKey? cropType, CropDamageCategoryKey? damageType, CropDamageOption? cropDamageOption, CropDamageSeverityKey? severity, GeoPointObject? location, List<String>? imagePaths}) {
    return CropDamageObject._internal(
      cropType: cropType,
      damageType: damageType,
      cropDamageOption: cropDamageOption,
      severity: severity,
      location: location,
      imagePaths: imagePaths != null ? List<String>.unmodifiable(imagePaths) : imagePaths);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CropDamageObject &&
      _cropType == other._cropType &&
      _damageType == other._damageType &&
      _cropDamageOption == other._cropDamageOption &&
      _severity == other._severity &&
      _location == other._location &&
      DeepCollectionEquality().equals(_imagePaths, other._imagePaths);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CropDamageObject {");
    buffer.write("cropType=" + (_cropType != null ? enumToString(_cropType)! : "null") + ", ");
    buffer.write("damageType=" + (_damageType != null ? enumToString(_damageType)! : "null") + ", ");
    buffer.write("cropDamageOption=" + (_cropDamageOption != null ? _cropDamageOption!.toString() : "null") + ", ");
    buffer.write("severity=" + (_severity != null ? enumToString(_severity)! : "null") + ", ");
    buffer.write("location=" + (_location != null ? _location!.toString() : "null") + ", ");
    buffer.write("imagePaths=" + (_imagePaths != null ? _imagePaths!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CropDamageObject copyWith({CropTypeKey? cropType, CropDamageCategoryKey? damageType, CropDamageOption? cropDamageOption, CropDamageSeverityKey? severity, GeoPointObject? location, List<String>? imagePaths}) {
    return CropDamageObject._internal(
      cropType: cropType ?? this.cropType,
      damageType: damageType ?? this.damageType,
      cropDamageOption: cropDamageOption ?? this.cropDamageOption,
      severity: severity ?? this.severity,
      location: location ?? this.location,
      imagePaths: imagePaths ?? this.imagePaths);
  }
  
  CropDamageObject.fromJson(Map<String, dynamic> json)  
    : _cropType = enumFromString<CropTypeKey>(json['cropType'], CropTypeKey.values),
      _damageType = enumFromString<CropDamageCategoryKey>(json['damageType'], CropDamageCategoryKey.values),
      _cropDamageOption = json['cropDamageOption']?['serializedData'] != null
        ? CropDamageOption.fromJson(new Map<String, dynamic>.from(json['cropDamageOption']['serializedData']))
        : null,
      _severity = enumFromString<CropDamageSeverityKey>(json['severity'], CropDamageSeverityKey.values),
      _location = json['location']?['serializedData'] != null
        ? GeoPointObject.fromJson(new Map<String, dynamic>.from(json['location']['serializedData']))
        : null,
      _imagePaths = json['imagePaths']?.cast<String>();
  
  Map<String, dynamic> toJson() => {
    'cropType': enumToString(_cropType), 'damageType': enumToString(_damageType), 'cropDamageOption': _cropDamageOption?.toJson(), 'severity': enumToString(_severity), 'location': _location?.toJson(), 'imagePaths': _imagePaths
  };
  
  Map<String, Object?> toMap() => {
    'cropType': _cropType, 'damageType': _damageType, 'cropDamageOption': _cropDamageOption, 'severity': _severity, 'location': _location, 'imagePaths': _imagePaths
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CropDamageObject";
    modelSchemaDefinition.pluralName = "CropDamageObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'cropType',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'damageType',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'cropDamageOption',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'severity',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'location',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'GeoPointObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'imagePaths',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
  });
}