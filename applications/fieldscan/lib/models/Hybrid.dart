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


/** This is an auto generated class representing the Hybrid type in your schema. */
@immutable
class Hybrid extends Model {
  static const classType = const _HybridModelType();
  final String id;
  final String? _name;
  final int? _femalePlantingNumber;
  final List<SplitPlantingObject>? _splitPlantings;
  final String? _seasonID;
  final List<FieldChild>? _FieldChildren;
  final String? _femaleInbredID;
  final String? _maleInbredID;
  final String? _splitPlantingTypeID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  HybridModelIdentifier get modelIdentifier {
      return HybridModelIdentifier(
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
  
  int? get femalePlantingNumber {
    return _femalePlantingNumber;
  }
  
  List<SplitPlantingObject>? get splitPlantings {
    return _splitPlantings;
  }
  
  String get seasonID {
    try {
      return _seasonID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<FieldChild>? get FieldChildren {
    return _FieldChildren;
  }
  
  String get femaleInbredID {
    try {
      return _femaleInbredID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get maleInbredID {
    try {
      return _maleInbredID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get splitPlantingTypeID {
    try {
      return _splitPlantingTypeID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Hybrid._internal({required this.id, required name, femalePlantingNumber, splitPlantings, required seasonID, FieldChildren, required femaleInbredID, required maleInbredID, required splitPlantingTypeID, createdAt, updatedAt}): _name = name, _femalePlantingNumber = femalePlantingNumber, _splitPlantings = splitPlantings, _seasonID = seasonID, _FieldChildren = FieldChildren, _femaleInbredID = femaleInbredID, _maleInbredID = maleInbredID, _splitPlantingTypeID = splitPlantingTypeID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Hybrid({String? id, required String name, int? femalePlantingNumber, List<SplitPlantingObject>? splitPlantings, required String seasonID, List<FieldChild>? FieldChildren, required String femaleInbredID, required String maleInbredID, required String splitPlantingTypeID}) {
    return Hybrid._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      femalePlantingNumber: femalePlantingNumber,
      splitPlantings: splitPlantings != null ? List<SplitPlantingObject>.unmodifiable(splitPlantings) : splitPlantings,
      seasonID: seasonID,
      FieldChildren: FieldChildren != null ? List<FieldChild>.unmodifiable(FieldChildren) : FieldChildren,
      femaleInbredID: femaleInbredID,
      maleInbredID: maleInbredID,
      splitPlantingTypeID: splitPlantingTypeID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hybrid &&
      id == other.id &&
      _name == other._name &&
      _femalePlantingNumber == other._femalePlantingNumber &&
      DeepCollectionEquality().equals(_splitPlantings, other._splitPlantings) &&
      _seasonID == other._seasonID &&
      DeepCollectionEquality().equals(_FieldChildren, other._FieldChildren) &&
      _femaleInbredID == other._femaleInbredID &&
      _maleInbredID == other._maleInbredID &&
      _splitPlantingTypeID == other._splitPlantingTypeID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Hybrid {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("femalePlantingNumber=" + (_femalePlantingNumber != null ? _femalePlantingNumber!.toString() : "null") + ", ");
    buffer.write("splitPlantings=" + (_splitPlantings != null ? _splitPlantings!.toString() : "null") + ", ");
    buffer.write("seasonID=" + "$_seasonID" + ", ");
    buffer.write("femaleInbredID=" + "$_femaleInbredID" + ", ");
    buffer.write("maleInbredID=" + "$_maleInbredID" + ", ");
    buffer.write("splitPlantingTypeID=" + "$_splitPlantingTypeID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Hybrid copyWith({String? name, int? femalePlantingNumber, List<SplitPlantingObject>? splitPlantings, String? seasonID, List<FieldChild>? FieldChildren, String? femaleInbredID, String? maleInbredID, String? splitPlantingTypeID}) {
    return Hybrid._internal(
      id: id,
      name: name ?? this.name,
      femalePlantingNumber: femalePlantingNumber ?? this.femalePlantingNumber,
      splitPlantings: splitPlantings ?? this.splitPlantings,
      seasonID: seasonID ?? this.seasonID,
      FieldChildren: FieldChildren ?? this.FieldChildren,
      femaleInbredID: femaleInbredID ?? this.femaleInbredID,
      maleInbredID: maleInbredID ?? this.maleInbredID,
      splitPlantingTypeID: splitPlantingTypeID ?? this.splitPlantingTypeID);
  }
  
  Hybrid.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _femalePlantingNumber = (json['femalePlantingNumber'] as num?)?.toInt(),
      _splitPlantings = json['splitPlantings'] is List
        ? (json['splitPlantings'] as List)
          .where((e) => e != null)
          .map((e) => SplitPlantingObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _seasonID = json['seasonID'],
      _FieldChildren = json['FieldChildren'] is List
        ? (json['FieldChildren'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => FieldChild.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _femaleInbredID = json['femaleInbredID'],
      _maleInbredID = json['maleInbredID'],
      _splitPlantingTypeID = json['splitPlantingTypeID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'femalePlantingNumber': _femalePlantingNumber, 'splitPlantings': _splitPlantings?.map((SplitPlantingObject? e) => e?.toJson()).toList(), 'seasonID': _seasonID, 'FieldChildren': _FieldChildren?.map((FieldChild? e) => e?.toJson()).toList(), 'femaleInbredID': _femaleInbredID, 'maleInbredID': _maleInbredID, 'splitPlantingTypeID': _splitPlantingTypeID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'femalePlantingNumber': _femalePlantingNumber, 'splitPlantings': _splitPlantings, 'seasonID': _seasonID, 'FieldChildren': _FieldChildren, 'femaleInbredID': _femaleInbredID, 'maleInbredID': _maleInbredID, 'splitPlantingTypeID': _splitPlantingTypeID, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<HybridModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<HybridModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField FEMALEPLANTINGNUMBER = QueryField(fieldName: "femalePlantingNumber");
  static final QueryField SPLITPLANTINGS = QueryField(fieldName: "splitPlantings");
  static final QueryField SEASONID = QueryField(fieldName: "seasonID");
  static final QueryField FIELDCHILDREN = QueryField(
    fieldName: "FieldChildren",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'FieldChild'));
  static final QueryField FEMALEINBREDID = QueryField(fieldName: "femaleInbredID");
  static final QueryField MALEINBREDID = QueryField(fieldName: "maleInbredID");
  static final QueryField SPLITPLANTINGTYPEID = QueryField(fieldName: "splitPlantingTypeID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Hybrid";
    modelSchemaDefinition.pluralName = "Hybrids";
    
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
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["femaleInbredID"], name: "byFemaleInbred"),
      ModelIndex(fields: const ["maleInbredID"], name: "byMaleInbred"),
      ModelIndex(fields: const ["splitPlantingTypeID"], name: "bySplitPlantingType")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Hybrid.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Hybrid.FEMALEPLANTINGNUMBER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'splitPlantings',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'SplitPlantingObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Hybrid.SEASONID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Hybrid.FIELDCHILDREN,
      isRequired: false,
      ofModelName: 'FieldChild',
      associatedKey: FieldChild.HYBRIDID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Hybrid.FEMALEINBREDID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Hybrid.MALEINBREDID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Hybrid.SPLITPLANTINGTYPEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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

class _HybridModelType extends ModelType<Hybrid> {
  const _HybridModelType();
  
  @override
  Hybrid fromJson(Map<String, dynamic> jsonData) {
    return Hybrid.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Hybrid';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Hybrid] in your schema.
 */
@immutable
class HybridModelIdentifier implements ModelIdentifier<Hybrid> {
  final String id;

  /** Create an instance of HybridModelIdentifier using [id] the primary key. */
  const HybridModelIdentifier({
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
  String toString() => 'HybridModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is HybridModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}