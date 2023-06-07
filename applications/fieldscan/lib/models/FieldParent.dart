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


/** This is an auto generated class representing the FieldParent type in your schema. */
@immutable
class FieldParent extends Model {
  static const classType = const _FieldParentModelType();
  final String id;
  final String? _fieldName;
  final String? _fieldNumberBase;
  final CountryKey? _country;
  final UsStateKey? _state;
  final PlssLocationObject? _plssLocation;
  final GeoPointObject? _mapCenterPoint;
  final int? _mapCenterZoom;
  final List<FieldMarkerObject>? _fieldMarkers;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  FieldParentModelIdentifier get modelIdentifier {
      return FieldParentModelIdentifier(
        id: id
      );
  }
  
  String get fieldName {
    try {
      return _fieldName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get fieldNumberBase {
    try {
      return _fieldNumberBase!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  CountryKey get country {
    try {
      return _country!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  UsStateKey get state {
    try {
      return _state!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  PlssLocationObject? get plssLocation {
    return _plssLocation;
  }
  
  GeoPointObject get mapCenterPoint {
    try {
      return _mapCenterPoint!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get mapCenterZoom {
    try {
      return _mapCenterZoom!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<FieldMarkerObject>? get fieldMarkers {
    return _fieldMarkers;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const FieldParent._internal({required this.id, required fieldName, required fieldNumberBase, required country, required state, plssLocation, required mapCenterPoint, required mapCenterZoom, fieldMarkers, createdAt, updatedAt}): _fieldName = fieldName, _fieldNumberBase = fieldNumberBase, _country = country, _state = state, _plssLocation = plssLocation, _mapCenterPoint = mapCenterPoint, _mapCenterZoom = mapCenterZoom, _fieldMarkers = fieldMarkers, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory FieldParent({String? id, required String fieldName, required String fieldNumberBase, required CountryKey country, required UsStateKey state, PlssLocationObject? plssLocation, required GeoPointObject mapCenterPoint, required int mapCenterZoom, List<FieldMarkerObject>? fieldMarkers}) {
    return FieldParent._internal(
      id: id == null ? UUID.getUUID() : id,
      fieldName: fieldName,
      fieldNumberBase: fieldNumberBase,
      country: country,
      state: state,
      plssLocation: plssLocation,
      mapCenterPoint: mapCenterPoint,
      mapCenterZoom: mapCenterZoom,
      fieldMarkers: fieldMarkers != null ? List<FieldMarkerObject>.unmodifiable(fieldMarkers) : fieldMarkers);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldParent &&
      id == other.id &&
      _fieldName == other._fieldName &&
      _fieldNumberBase == other._fieldNumberBase &&
      _country == other._country &&
      _state == other._state &&
      _plssLocation == other._plssLocation &&
      _mapCenterPoint == other._mapCenterPoint &&
      _mapCenterZoom == other._mapCenterZoom &&
      DeepCollectionEquality().equals(_fieldMarkers, other._fieldMarkers);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FieldParent {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("fieldName=" + "$_fieldName" + ", ");
    buffer.write("fieldNumberBase=" + "$_fieldNumberBase" + ", ");
    buffer.write("country=" + (_country != null ? enumToString(_country)! : "null") + ", ");
    buffer.write("state=" + (_state != null ? enumToString(_state)! : "null") + ", ");
    buffer.write("plssLocation=" + (_plssLocation != null ? _plssLocation!.toString() : "null") + ", ");
    buffer.write("mapCenterPoint=" + (_mapCenterPoint != null ? _mapCenterPoint!.toString() : "null") + ", ");
    buffer.write("mapCenterZoom=" + (_mapCenterZoom != null ? _mapCenterZoom!.toString() : "null") + ", ");
    buffer.write("fieldMarkers=" + (_fieldMarkers != null ? _fieldMarkers!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FieldParent copyWith({String? fieldName, String? fieldNumberBase, CountryKey? country, UsStateKey? state, PlssLocationObject? plssLocation, GeoPointObject? mapCenterPoint, int? mapCenterZoom, List<FieldMarkerObject>? fieldMarkers}) {
    return FieldParent._internal(
      id: id,
      fieldName: fieldName ?? this.fieldName,
      fieldNumberBase: fieldNumberBase ?? this.fieldNumberBase,
      country: country ?? this.country,
      state: state ?? this.state,
      plssLocation: plssLocation ?? this.plssLocation,
      mapCenterPoint: mapCenterPoint ?? this.mapCenterPoint,
      mapCenterZoom: mapCenterZoom ?? this.mapCenterZoom,
      fieldMarkers: fieldMarkers ?? this.fieldMarkers);
  }
  
  FieldParent.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _fieldName = json['fieldName'],
      _fieldNumberBase = json['fieldNumberBase'],
      _country = enumFromString<CountryKey>(json['country'], CountryKey.values),
      _state = enumFromString<UsStateKey>(json['state'], UsStateKey.values),
      _plssLocation = json['plssLocation']?['serializedData'] != null
        ? PlssLocationObject.fromJson(new Map<String, dynamic>.from(json['plssLocation']['serializedData']))
        : null,
      _mapCenterPoint = json['mapCenterPoint']?['serializedData'] != null
        ? GeoPointObject.fromJson(new Map<String, dynamic>.from(json['mapCenterPoint']['serializedData']))
        : null,
      _mapCenterZoom = (json['mapCenterZoom'] as num?)?.toInt(),
      _fieldMarkers = json['fieldMarkers'] is List
        ? (json['fieldMarkers'] as List)
          .where((e) => e != null)
          .map((e) => FieldMarkerObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'fieldName': _fieldName, 'fieldNumberBase': _fieldNumberBase, 'country': enumToString(_country), 'state': enumToString(_state), 'plssLocation': _plssLocation?.toJson(), 'mapCenterPoint': _mapCenterPoint?.toJson(), 'mapCenterZoom': _mapCenterZoom, 'fieldMarkers': _fieldMarkers?.map((FieldMarkerObject? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'fieldName': _fieldName, 'fieldNumberBase': _fieldNumberBase, 'country': _country, 'state': _state, 'plssLocation': _plssLocation, 'mapCenterPoint': _mapCenterPoint, 'mapCenterZoom': _mapCenterZoom, 'fieldMarkers': _fieldMarkers, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<FieldParentModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<FieldParentModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField FIELDNAME = QueryField(fieldName: "fieldName");
  static final QueryField FIELDNUMBERBASE = QueryField(fieldName: "fieldNumberBase");
  static final QueryField COUNTRY = QueryField(fieldName: "country");
  static final QueryField STATE = QueryField(fieldName: "state");
  static final QueryField PLSSLOCATION = QueryField(fieldName: "plssLocation");
  static final QueryField MAPCENTERPOINT = QueryField(fieldName: "mapCenterPoint");
  static final QueryField MAPCENTERZOOM = QueryField(fieldName: "mapCenterZoom");
  static final QueryField FIELDMARKERS = QueryField(fieldName: "fieldMarkers");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FieldParent";
    modelSchemaDefinition.pluralName = "FieldParents";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldParent.FIELDNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldParent.FIELDNUMBERBASE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldParent.COUNTRY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldParent.STATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'plssLocation',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'PlssLocationObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'mapCenterPoint',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'GeoPointObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldParent.MAPCENTERZOOM,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'fieldMarkers',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'FieldMarkerObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _FieldParentModelType extends ModelType<FieldParent> {
  const _FieldParentModelType();
  
  @override
  FieldParent fromJson(Map<String, dynamic> jsonData) {
    return FieldParent.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'FieldParent';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [FieldParent] in your schema.
 */
@immutable
class FieldParentModelIdentifier implements ModelIdentifier<FieldParent> {
  final String id;

  /** Create an instance of FieldParentModelIdentifier using [id] the primary key. */
  const FieldParentModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'FieldParentModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is FieldParentModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}