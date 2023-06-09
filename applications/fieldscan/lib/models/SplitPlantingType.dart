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


/** This is an auto generated class representing the SplitPlantingType type in your schema. */
@immutable
class SplitPlantingType extends Model {
  static const classType = const _SplitPlantingTypeModelType();
  final String id;
  final String? _name;
  final int? _numberOfPlantings;
  final List<PlantingDescriptionObject>? _plantingDescriptions;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  SplitPlantingTypeModelIdentifier get modelIdentifier {
      return SplitPlantingTypeModelIdentifier(
        id: id
      );
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get numberOfPlantings {
    try {
      return _numberOfPlantings!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<PlantingDescriptionObject>? get plantingDescriptions {
    return _plantingDescriptions;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const SplitPlantingType._internal({required this.id, required name, required numberOfPlantings, plantingDescriptions, createdAt, updatedAt}): _name = name, _numberOfPlantings = numberOfPlantings, _plantingDescriptions = plantingDescriptions, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory SplitPlantingType({String? id, required String name, required int numberOfPlantings, List<PlantingDescriptionObject>? plantingDescriptions}) {
    return SplitPlantingType._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      numberOfPlantings: numberOfPlantings,
      plantingDescriptions: plantingDescriptions != null ? List<PlantingDescriptionObject>.unmodifiable(plantingDescriptions) : plantingDescriptions);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SplitPlantingType &&
      id == other.id &&
      _name == other._name &&
      _numberOfPlantings == other._numberOfPlantings &&
      DeepCollectionEquality().equals(_plantingDescriptions, other._plantingDescriptions);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("SplitPlantingType {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("numberOfPlantings=" + (_numberOfPlantings != null ? _numberOfPlantings!.toString() : "null") + ", ");
    buffer.write("plantingDescriptions=" + (_plantingDescriptions != null ? _plantingDescriptions!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  SplitPlantingType copyWith({String? name, int? numberOfPlantings, List<PlantingDescriptionObject>? plantingDescriptions}) {
    return SplitPlantingType._internal(
      id: id,
      name: name ?? this.name,
      numberOfPlantings: numberOfPlantings ?? this.numberOfPlantings,
      plantingDescriptions: plantingDescriptions ?? this.plantingDescriptions);
  }
  
  SplitPlantingType.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _numberOfPlantings = (json['numberOfPlantings'] as num?)?.toInt(),
      _plantingDescriptions = json['plantingDescriptions'] is List
        ? (json['plantingDescriptions'] as List)
          .where((e) => e != null)
          .map((e) => PlantingDescriptionObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'numberOfPlantings': _numberOfPlantings, 'plantingDescriptions': _plantingDescriptions?.map((PlantingDescriptionObject? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'numberOfPlantings': _numberOfPlantings, 'plantingDescriptions': _plantingDescriptions, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<SplitPlantingTypeModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<SplitPlantingTypeModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField NUMBEROFPLANTINGS = QueryField(fieldName: "numberOfPlantings");
  static final QueryField PLANTINGDESCRIPTIONS = QueryField(fieldName: "plantingDescriptions");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SplitPlantingType";
    modelSchemaDefinition.pluralName = "SplitPlantingTypes";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SplitPlantingType.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: SplitPlantingType.NUMBEROFPLANTINGS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'plantingDescriptions',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'PlantingDescriptionObject')
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

class _SplitPlantingTypeModelType extends ModelType<SplitPlantingType> {
  const _SplitPlantingTypeModelType();
  
  @override
  SplitPlantingType fromJson(Map<String, dynamic> jsonData) {
    return SplitPlantingType.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'SplitPlantingType';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [SplitPlantingType] in your schema.
 */
@immutable
class SplitPlantingTypeModelIdentifier implements ModelIdentifier<SplitPlantingType> {
  final String id;

  /** Create an instance of SplitPlantingTypeModelIdentifier using [id] the primary key. */
  const SplitPlantingTypeModelIdentifier({
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
  String toString() => 'SplitPlantingTypeModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is SplitPlantingTypeModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}