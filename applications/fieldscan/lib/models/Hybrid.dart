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
  final SplitPlantingType? _splitPlantingType;
  final List<SplitPlantingObject>? _splitPlantings;
  final MaleInbred? _maleInbred;
  final FemaleInbred? _femaleInbred;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _hybridSplitPlantingTypeId;
  final String? _hybridMaleInbredId;
  final String? _hybridFemaleInbredId;

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
  
  SplitPlantingType? get splitPlantingType {
    return _splitPlantingType;
  }
  
  List<SplitPlantingObject>? get splitPlantings {
    return _splitPlantings;
  }
  
  MaleInbred? get maleInbred {
    return _maleInbred;
  }
  
  FemaleInbred? get femaleInbred {
    return _femaleInbred;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get hybridSplitPlantingTypeId {
    return _hybridSplitPlantingTypeId;
  }
  
  String? get hybridMaleInbredId {
    return _hybridMaleInbredId;
  }
  
  String? get hybridFemaleInbredId {
    return _hybridFemaleInbredId;
  }
  
  const Hybrid._internal({required this.id, required name, femalePlantingNumber, splitPlantingType, splitPlantings, maleInbred, femaleInbred, createdAt, updatedAt, hybridSplitPlantingTypeId, hybridMaleInbredId, hybridFemaleInbredId}): _name = name, _femalePlantingNumber = femalePlantingNumber, _splitPlantingType = splitPlantingType, _splitPlantings = splitPlantings, _maleInbred = maleInbred, _femaleInbred = femaleInbred, _createdAt = createdAt, _updatedAt = updatedAt, _hybridSplitPlantingTypeId = hybridSplitPlantingTypeId, _hybridMaleInbredId = hybridMaleInbredId, _hybridFemaleInbredId = hybridFemaleInbredId;
  
  factory Hybrid({String? id, required String name, int? femalePlantingNumber, SplitPlantingType? splitPlantingType, List<SplitPlantingObject>? splitPlantings, MaleInbred? maleInbred, FemaleInbred? femaleInbred, String? hybridSplitPlantingTypeId, String? hybridMaleInbredId, String? hybridFemaleInbredId}) {
    return Hybrid._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      femalePlantingNumber: femalePlantingNumber,
      splitPlantingType: splitPlantingType,
      splitPlantings: splitPlantings != null ? List<SplitPlantingObject>.unmodifiable(splitPlantings) : splitPlantings,
      maleInbred: maleInbred,
      femaleInbred: femaleInbred,
      hybridSplitPlantingTypeId: hybridSplitPlantingTypeId,
      hybridMaleInbredId: hybridMaleInbredId,
      hybridFemaleInbredId: hybridFemaleInbredId);
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
      _splitPlantingType == other._splitPlantingType &&
      DeepCollectionEquality().equals(_splitPlantings, other._splitPlantings) &&
      _maleInbred == other._maleInbred &&
      _femaleInbred == other._femaleInbred &&
      _hybridSplitPlantingTypeId == other._hybridSplitPlantingTypeId &&
      _hybridMaleInbredId == other._hybridMaleInbredId &&
      _hybridFemaleInbredId == other._hybridFemaleInbredId;
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
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("hybridSplitPlantingTypeId=" + "$_hybridSplitPlantingTypeId" + ", ");
    buffer.write("hybridMaleInbredId=" + "$_hybridMaleInbredId" + ", ");
    buffer.write("hybridFemaleInbredId=" + "$_hybridFemaleInbredId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Hybrid copyWith({String? name, int? femalePlantingNumber, SplitPlantingType? splitPlantingType, List<SplitPlantingObject>? splitPlantings, MaleInbred? maleInbred, FemaleInbred? femaleInbred, String? hybridSplitPlantingTypeId, String? hybridMaleInbredId, String? hybridFemaleInbredId}) {
    return Hybrid._internal(
      id: id,
      name: name ?? this.name,
      femalePlantingNumber: femalePlantingNumber ?? this.femalePlantingNumber,
      splitPlantingType: splitPlantingType ?? this.splitPlantingType,
      splitPlantings: splitPlantings ?? this.splitPlantings,
      maleInbred: maleInbred ?? this.maleInbred,
      femaleInbred: femaleInbred ?? this.femaleInbred,
      hybridSplitPlantingTypeId: hybridSplitPlantingTypeId ?? this.hybridSplitPlantingTypeId,
      hybridMaleInbredId: hybridMaleInbredId ?? this.hybridMaleInbredId,
      hybridFemaleInbredId: hybridFemaleInbredId ?? this.hybridFemaleInbredId);
  }
  
  Hybrid.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _femalePlantingNumber = (json['femalePlantingNumber'] as num?)?.toInt(),
      _splitPlantingType = json['splitPlantingType']?['serializedData'] != null
        ? SplitPlantingType.fromJson(new Map<String, dynamic>.from(json['splitPlantingType']['serializedData']))
        : null,
      _splitPlantings = json['splitPlantings'] is List
        ? (json['splitPlantings'] as List)
          .where((e) => e != null)
          .map((e) => SplitPlantingObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _maleInbred = json['maleInbred']?['serializedData'] != null
        ? MaleInbred.fromJson(new Map<String, dynamic>.from(json['maleInbred']['serializedData']))
        : null,
      _femaleInbred = json['femaleInbred']?['serializedData'] != null
        ? FemaleInbred.fromJson(new Map<String, dynamic>.from(json['femaleInbred']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _hybridSplitPlantingTypeId = json['hybridSplitPlantingTypeId'],
      _hybridMaleInbredId = json['hybridMaleInbredId'],
      _hybridFemaleInbredId = json['hybridFemaleInbredId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'femalePlantingNumber': _femalePlantingNumber, 'splitPlantingType': _splitPlantingType?.toJson(), 'splitPlantings': _splitPlantings?.map((SplitPlantingObject? e) => e?.toJson()).toList(), 'maleInbred': _maleInbred?.toJson(), 'femaleInbred': _femaleInbred?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'hybridSplitPlantingTypeId': _hybridSplitPlantingTypeId, 'hybridMaleInbredId': _hybridMaleInbredId, 'hybridFemaleInbredId': _hybridFemaleInbredId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'femalePlantingNumber': _femalePlantingNumber, 'splitPlantingType': _splitPlantingType, 'splitPlantings': _splitPlantings, 'maleInbred': _maleInbred, 'femaleInbred': _femaleInbred, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'hybridSplitPlantingTypeId': _hybridSplitPlantingTypeId, 'hybridMaleInbredId': _hybridMaleInbredId, 'hybridFemaleInbredId': _hybridFemaleInbredId
  };

  static final QueryModelIdentifier<HybridModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<HybridModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField FEMALEPLANTINGNUMBER = QueryField(fieldName: "femalePlantingNumber");
  static final QueryField SPLITPLANTINGTYPE = QueryField(
    fieldName: "splitPlantingType",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'SplitPlantingType'));
  static final QueryField SPLITPLANTINGS = QueryField(fieldName: "splitPlantings");
  static final QueryField MALEINBRED = QueryField(
    fieldName: "maleInbred",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'MaleInbred'));
  static final QueryField FEMALEINBRED = QueryField(
    fieldName: "femaleInbred",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'FemaleInbred'));
  static final QueryField HYBRIDSPLITPLANTINGTYPEID = QueryField(fieldName: "hybridSplitPlantingTypeId");
  static final QueryField HYBRIDMALEINBREDID = QueryField(fieldName: "hybridMaleInbredId");
  static final QueryField HYBRIDFEMALEINBREDID = QueryField(fieldName: "hybridFemaleInbredId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Hybrid";
    modelSchemaDefinition.pluralName = "Hybrids";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Hybrid.SPLITPLANTINGTYPE,
      isRequired: false,
      ofModelName: 'SplitPlantingType',
      associatedKey: SplitPlantingType.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'splitPlantings',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'SplitPlantingObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Hybrid.MALEINBRED,
      isRequired: false,
      ofModelName: 'MaleInbred',
      associatedKey: MaleInbred.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Hybrid.FEMALEINBRED,
      isRequired: false,
      ofModelName: 'FemaleInbred',
      associatedKey: FemaleInbred.ID
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Hybrid.HYBRIDSPLITPLANTINGTYPEID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Hybrid.HYBRIDMALEINBREDID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Hybrid.HYBRIDFEMALEINBREDID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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