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


/** This is an auto generated class representing the CropDamageObject type in your schema. */
@immutable
class CropDamageObject {
  final CropTypeKey? _cropType;
  final CropDamageCategoryKey? _damageType;
  final String? _cropDamageOptionID;
  final CropDamageSeverityKey? _severity;
  final GeoPointObject? _location;

  CropTypeKey? get cropType {
    return _cropType;
  }
  
  CropDamageCategoryKey? get damageType {
    return _damageType;
  }
  
  String get cropDamageOptionID {
    try {
      return _cropDamageOptionID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  CropDamageSeverityKey? get severity {
    return _severity;
  }
  
  GeoPointObject? get location {
    return _location;
  }
  
  const CropDamageObject._internal({cropType, damageType, required cropDamageOptionID, severity, location}): _cropType = cropType, _damageType = damageType, _cropDamageOptionID = cropDamageOptionID, _severity = severity, _location = location;
  
  factory CropDamageObject({CropTypeKey? cropType, CropDamageCategoryKey? damageType, required String cropDamageOptionID, CropDamageSeverityKey? severity, GeoPointObject? location}) {
    return CropDamageObject._internal(
      cropType: cropType,
      damageType: damageType,
      cropDamageOptionID: cropDamageOptionID,
      severity: severity,
      location: location);
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
      _cropDamageOptionID == other._cropDamageOptionID &&
      _severity == other._severity &&
      _location == other._location;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CropDamageObject {");
    buffer.write("cropType=" + (_cropType != null ? enumToString(_cropType)! : "null") + ", ");
    buffer.write("damageType=" + (_damageType != null ? enumToString(_damageType)! : "null") + ", ");
    buffer.write("cropDamageOptionID=" + "$_cropDamageOptionID" + ", ");
    buffer.write("severity=" + (_severity != null ? enumToString(_severity)! : "null") + ", ");
    buffer.write("location=" + (_location != null ? _location!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CropDamageObject copyWith({CropTypeKey? cropType, CropDamageCategoryKey? damageType, String? cropDamageOptionID, CropDamageSeverityKey? severity, GeoPointObject? location}) {
    return CropDamageObject._internal(
      cropType: cropType ?? this.cropType,
      damageType: damageType ?? this.damageType,
      cropDamageOptionID: cropDamageOptionID ?? this.cropDamageOptionID,
      severity: severity ?? this.severity,
      location: location ?? this.location);
  }
  
  CropDamageObject.fromJson(Map<String, dynamic> json)  
    : _cropType = enumFromString<CropTypeKey>(json['cropType'], CropTypeKey.values),
      _damageType = enumFromString<CropDamageCategoryKey>(json['damageType'], CropDamageCategoryKey.values),
      _cropDamageOptionID = json['cropDamageOptionID'],
      _severity = enumFromString<CropDamageSeverityKey>(json['severity'], CropDamageSeverityKey.values),
      _location = json['location']?['serializedData'] != null
        ? GeoPointObject.fromJson(new Map<String, dynamic>.from(json['location']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'cropType': enumToString(_cropType), 'damageType': enumToString(_damageType), 'cropDamageOptionID': _cropDamageOptionID, 'severity': enumToString(_severity), 'location': _location?.toJson()
  };
  
  Map<String, Object?> toMap() => {
    'cropType': _cropType, 'damageType': _damageType, 'cropDamageOptionID': _cropDamageOptionID, 'severity': _severity, 'location': _location
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
      fieldName: 'cropDamageOptionID',
      isRequired: true,
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
  });
}