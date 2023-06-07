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


/** This is an auto generated class representing the FieldMarkerObject type in your schema. */
@immutable
class FieldMarkerObject {
  final String? _title;
  final String? _subtitle;
  final GeoPointObject? _geoPoint;
  final bool? _isNavigatable;

  String get title {
    try {
      return _title!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get subtitle {
    return _subtitle;
  }
  
  GeoPointObject? get geoPoint {
    return _geoPoint;
  }
  
  bool? get isNavigatable {
    return _isNavigatable;
  }
  
  const FieldMarkerObject._internal({required title, subtitle, geoPoint, isNavigatable}): _title = title, _subtitle = subtitle, _geoPoint = geoPoint, _isNavigatable = isNavigatable;
  
  factory FieldMarkerObject({required String title, String? subtitle, GeoPointObject? geoPoint, bool? isNavigatable}) {
    return FieldMarkerObject._internal(
      title: title,
      subtitle: subtitle,
      geoPoint: geoPoint,
      isNavigatable: isNavigatable);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldMarkerObject &&
      _title == other._title &&
      _subtitle == other._subtitle &&
      _geoPoint == other._geoPoint &&
      _isNavigatable == other._isNavigatable;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FieldMarkerObject {");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("subtitle=" + "$_subtitle" + ", ");
    buffer.write("geoPoint=" + (_geoPoint != null ? _geoPoint!.toString() : "null") + ", ");
    buffer.write("isNavigatable=" + (_isNavigatable != null ? _isNavigatable!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FieldMarkerObject copyWith({String? title, String? subtitle, GeoPointObject? geoPoint, bool? isNavigatable}) {
    return FieldMarkerObject._internal(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      geoPoint: geoPoint ?? this.geoPoint,
      isNavigatable: isNavigatable ?? this.isNavigatable);
  }
  
  FieldMarkerObject.fromJson(Map<String, dynamic> json)  
    : _title = json['title'],
      _subtitle = json['subtitle'],
      _geoPoint = json['geoPoint']?['serializedData'] != null
        ? GeoPointObject.fromJson(new Map<String, dynamic>.from(json['geoPoint']['serializedData']))
        : null,
      _isNavigatable = json['isNavigatable'];
  
  Map<String, dynamic> toJson() => {
    'title': _title, 'subtitle': _subtitle, 'geoPoint': _geoPoint?.toJson(), 'isNavigatable': _isNavigatable
  };
  
  Map<String, Object?> toMap() => {
    'title': _title, 'subtitle': _subtitle, 'geoPoint': _geoPoint, 'isNavigatable': _isNavigatable
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FieldMarkerObject";
    modelSchemaDefinition.pluralName = "FieldMarkerObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'title',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'subtitle',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'geoPoint',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'GeoPointObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'isNavigatable',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}