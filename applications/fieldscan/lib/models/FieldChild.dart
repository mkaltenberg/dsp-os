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


/** This is an auto generated class representing the FieldChild type in your schema. */
@immutable
class FieldChild extends Model {
  static const classType = const _FieldChildModelType();
  final String id;
  final FieldParent? _parent;
  final String? _fieldName;
  final String? _fieldNumber;
  final String? _hybridName;
  final bool? _isCertified;
  final FieldAcresObject? _acres;
  final List<GrowerShareObject>? _growerShares;
  final List<PlantingDateObject>? _plantingDates;
  final Season? _season;
  final Hybrid? _hybrid;
  final List<InspectionType>? _inspectionTypes;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _fieldChildParentId;
  final String? _fieldChildSeasonId;
  final String? _fieldChildHybridId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  FieldChildModelIdentifier get modelIdentifier {
      return FieldChildModelIdentifier(
        id: id
      );
  }
  
  FieldParent? get parent {
    return _parent;
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
  
  String get fieldNumber {
    try {
      return _fieldNumber!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get hybridName {
    try {
      return _hybridName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool? get isCertified {
    return _isCertified;
  }
  
  FieldAcresObject? get acres {
    return _acres;
  }
  
  List<GrowerShareObject>? get growerShares {
    return _growerShares;
  }
  
  List<PlantingDateObject>? get plantingDates {
    return _plantingDates;
  }
  
  Season? get season {
    return _season;
  }
  
  Hybrid? get hybrid {
    return _hybrid;
  }
  
  List<InspectionType>? get inspectionTypes {
    return _inspectionTypes;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get fieldChildParentId {
    return _fieldChildParentId;
  }
  
  String? get fieldChildSeasonId {
    return _fieldChildSeasonId;
  }
  
  String? get fieldChildHybridId {
    return _fieldChildHybridId;
  }
  
  const FieldChild._internal({required this.id, parent, required fieldName, required fieldNumber, required hybridName, isCertified, acres, growerShares, plantingDates, season, hybrid, inspectionTypes, createdAt, updatedAt, fieldChildParentId, fieldChildSeasonId, fieldChildHybridId}): _parent = parent, _fieldName = fieldName, _fieldNumber = fieldNumber, _hybridName = hybridName, _isCertified = isCertified, _acres = acres, _growerShares = growerShares, _plantingDates = plantingDates, _season = season, _hybrid = hybrid, _inspectionTypes = inspectionTypes, _createdAt = createdAt, _updatedAt = updatedAt, _fieldChildParentId = fieldChildParentId, _fieldChildSeasonId = fieldChildSeasonId, _fieldChildHybridId = fieldChildHybridId;
  
  factory FieldChild({String? id, FieldParent? parent, required String fieldName, required String fieldNumber, required String hybridName, bool? isCertified, FieldAcresObject? acres, List<GrowerShareObject>? growerShares, List<PlantingDateObject>? plantingDates, Season? season, Hybrid? hybrid, List<InspectionType>? inspectionTypes, String? fieldChildParentId, String? fieldChildSeasonId, String? fieldChildHybridId}) {
    return FieldChild._internal(
      id: id == null ? UUID.getUUID() : id,
      parent: parent,
      fieldName: fieldName,
      fieldNumber: fieldNumber,
      hybridName: hybridName,
      isCertified: isCertified,
      acres: acres,
      growerShares: growerShares != null ? List<GrowerShareObject>.unmodifiable(growerShares) : growerShares,
      plantingDates: plantingDates != null ? List<PlantingDateObject>.unmodifiable(plantingDates) : plantingDates,
      season: season,
      hybrid: hybrid,
      inspectionTypes: inspectionTypes != null ? List<InspectionType>.unmodifiable(inspectionTypes) : inspectionTypes,
      fieldChildParentId: fieldChildParentId,
      fieldChildSeasonId: fieldChildSeasonId,
      fieldChildHybridId: fieldChildHybridId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldChild &&
      id == other.id &&
      _parent == other._parent &&
      _fieldName == other._fieldName &&
      _fieldNumber == other._fieldNumber &&
      _hybridName == other._hybridName &&
      _isCertified == other._isCertified &&
      _acres == other._acres &&
      DeepCollectionEquality().equals(_growerShares, other._growerShares) &&
      DeepCollectionEquality().equals(_plantingDates, other._plantingDates) &&
      _season == other._season &&
      _hybrid == other._hybrid &&
      DeepCollectionEquality().equals(_inspectionTypes, other._inspectionTypes) &&
      _fieldChildParentId == other._fieldChildParentId &&
      _fieldChildSeasonId == other._fieldChildSeasonId &&
      _fieldChildHybridId == other._fieldChildHybridId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FieldChild {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("fieldName=" + "$_fieldName" + ", ");
    buffer.write("fieldNumber=" + "$_fieldNumber" + ", ");
    buffer.write("hybridName=" + "$_hybridName" + ", ");
    buffer.write("isCertified=" + (_isCertified != null ? _isCertified!.toString() : "null") + ", ");
    buffer.write("acres=" + (_acres != null ? _acres!.toString() : "null") + ", ");
    buffer.write("growerShares=" + (_growerShares != null ? _growerShares!.toString() : "null") + ", ");
    buffer.write("plantingDates=" + (_plantingDates != null ? _plantingDates!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("fieldChildParentId=" + "$_fieldChildParentId" + ", ");
    buffer.write("fieldChildSeasonId=" + "$_fieldChildSeasonId" + ", ");
    buffer.write("fieldChildHybridId=" + "$_fieldChildHybridId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FieldChild copyWith({FieldParent? parent, String? fieldName, String? fieldNumber, String? hybridName, bool? isCertified, FieldAcresObject? acres, List<GrowerShareObject>? growerShares, List<PlantingDateObject>? plantingDates, Season? season, Hybrid? hybrid, List<InspectionType>? inspectionTypes, String? fieldChildParentId, String? fieldChildSeasonId, String? fieldChildHybridId}) {
    return FieldChild._internal(
      id: id,
      parent: parent ?? this.parent,
      fieldName: fieldName ?? this.fieldName,
      fieldNumber: fieldNumber ?? this.fieldNumber,
      hybridName: hybridName ?? this.hybridName,
      isCertified: isCertified ?? this.isCertified,
      acres: acres ?? this.acres,
      growerShares: growerShares ?? this.growerShares,
      plantingDates: plantingDates ?? this.plantingDates,
      season: season ?? this.season,
      hybrid: hybrid ?? this.hybrid,
      inspectionTypes: inspectionTypes ?? this.inspectionTypes,
      fieldChildParentId: fieldChildParentId ?? this.fieldChildParentId,
      fieldChildSeasonId: fieldChildSeasonId ?? this.fieldChildSeasonId,
      fieldChildHybridId: fieldChildHybridId ?? this.fieldChildHybridId);
  }
  
  FieldChild.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _parent = json['parent']?['serializedData'] != null
        ? FieldParent.fromJson(new Map<String, dynamic>.from(json['parent']['serializedData']))
        : null,
      _fieldName = json['fieldName'],
      _fieldNumber = json['fieldNumber'],
      _hybridName = json['hybridName'],
      _isCertified = json['isCertified'],
      _acres = json['acres']?['serializedData'] != null
        ? FieldAcresObject.fromJson(new Map<String, dynamic>.from(json['acres']['serializedData']))
        : null,
      _growerShares = json['growerShares'] is List
        ? (json['growerShares'] as List)
          .where((e) => e != null)
          .map((e) => GrowerShareObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _plantingDates = json['plantingDates'] is List
        ? (json['plantingDates'] as List)
          .where((e) => e != null)
          .map((e) => PlantingDateObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _season = json['season']?['serializedData'] != null
        ? Season.fromJson(new Map<String, dynamic>.from(json['season']['serializedData']))
        : null,
      _hybrid = json['hybrid']?['serializedData'] != null
        ? Hybrid.fromJson(new Map<String, dynamic>.from(json['hybrid']['serializedData']))
        : null,
      _inspectionTypes = json['inspectionTypes'] is List
        ? (json['inspectionTypes'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => InspectionType.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _fieldChildParentId = json['fieldChildParentId'],
      _fieldChildSeasonId = json['fieldChildSeasonId'],
      _fieldChildHybridId = json['fieldChildHybridId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'parent': _parent?.toJson(), 'fieldName': _fieldName, 'fieldNumber': _fieldNumber, 'hybridName': _hybridName, 'isCertified': _isCertified, 'acres': _acres?.toJson(), 'growerShares': _growerShares?.map((GrowerShareObject? e) => e?.toJson()).toList(), 'plantingDates': _plantingDates?.map((PlantingDateObject? e) => e?.toJson()).toList(), 'season': _season?.toJson(), 'hybrid': _hybrid?.toJson(), 'inspectionTypes': _inspectionTypes?.map((InspectionType? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'fieldChildParentId': _fieldChildParentId, 'fieldChildSeasonId': _fieldChildSeasonId, 'fieldChildHybridId': _fieldChildHybridId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'parent': _parent, 'fieldName': _fieldName, 'fieldNumber': _fieldNumber, 'hybridName': _hybridName, 'isCertified': _isCertified, 'acres': _acres, 'growerShares': _growerShares, 'plantingDates': _plantingDates, 'season': _season, 'hybrid': _hybrid, 'inspectionTypes': _inspectionTypes, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'fieldChildParentId': _fieldChildParentId, 'fieldChildSeasonId': _fieldChildSeasonId, 'fieldChildHybridId': _fieldChildHybridId
  };

  static final QueryModelIdentifier<FieldChildModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<FieldChildModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField PARENT = QueryField(
    fieldName: "parent",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'FieldParent'));
  static final QueryField FIELDNAME = QueryField(fieldName: "fieldName");
  static final QueryField FIELDNUMBER = QueryField(fieldName: "fieldNumber");
  static final QueryField HYBRIDNAME = QueryField(fieldName: "hybridName");
  static final QueryField ISCERTIFIED = QueryField(fieldName: "isCertified");
  static final QueryField ACRES = QueryField(fieldName: "acres");
  static final QueryField GROWERSHARES = QueryField(fieldName: "growerShares");
  static final QueryField PLANTINGDATES = QueryField(fieldName: "plantingDates");
  static final QueryField SEASON = QueryField(
    fieldName: "season",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Season'));
  static final QueryField HYBRID = QueryField(
    fieldName: "hybrid",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Hybrid'));
  static final QueryField INSPECTIONTYPES = QueryField(
    fieldName: "inspectionTypes",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'InspectionType'));
  static final QueryField FIELDCHILDPARENTID = QueryField(fieldName: "fieldChildParentId");
  static final QueryField FIELDCHILDSEASONID = QueryField(fieldName: "fieldChildSeasonId");
  static final QueryField FIELDCHILDHYBRIDID = QueryField(fieldName: "fieldChildHybridId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FieldChild";
    modelSchemaDefinition.pluralName = "FieldChildren";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: FieldChild.PARENT,
      isRequired: false,
      ofModelName: 'FieldParent',
      associatedKey: FieldParent.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.FIELDNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.FIELDNUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.HYBRIDNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.ISCERTIFIED,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'acres',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'FieldAcresObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'growerShares',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'GrowerShareObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'plantingDates',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'PlantingDateObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: FieldChild.SEASON,
      isRequired: false,
      ofModelName: 'Season',
      associatedKey: Season.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: FieldChild.HYBRID,
      isRequired: false,
      ofModelName: 'Hybrid',
      associatedKey: Hybrid.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: FieldChild.INSPECTIONTYPES,
      isRequired: false,
      ofModelName: 'InspectionType',
      associatedKey: InspectionType.FIELDCHILDINSPECTIONTYPESID
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
      key: FieldChild.FIELDCHILDPARENTID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.FIELDCHILDSEASONID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.FIELDCHILDHYBRIDID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _FieldChildModelType extends ModelType<FieldChild> {
  const _FieldChildModelType();
  
  @override
  FieldChild fromJson(Map<String, dynamic> jsonData) {
    return FieldChild.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'FieldChild';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [FieldChild] in your schema.
 */
@immutable
class FieldChildModelIdentifier implements ModelIdentifier<FieldChild> {
  final String id;

  /** Create an instance of FieldChildModelIdentifier using [id] the primary key. */
  const FieldChildModelIdentifier({
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
  String toString() => 'FieldChildModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is FieldChildModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}