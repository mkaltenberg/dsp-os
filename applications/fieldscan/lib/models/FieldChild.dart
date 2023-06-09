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
  final String? _fieldParentId;
  final String? _fieldName;
  final String? _fieldNumber;
  final String? _hybridName;
  final bool? _isCertified;
  final FieldAcresObject? _acres;
  final List<GrowerShareObject>? _growerShares;
  final List<PlantingDateObject>? _plantingDates;
  final String? _seasonId;
  final String? _hybridId;
  final List<String>? _inspectionTypesIds;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

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
  
  String get fieldParentId {
    try {
      return _fieldParentId!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  String get seasonId {
    try {
      return _seasonId!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get hybridId {
    try {
      return _hybridId!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String>? get inspectionTypesIds {
    return _inspectionTypesIds;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const FieldChild._internal({required this.id, required fieldParentId, required fieldName, required fieldNumber, required hybridName, isCertified, acres, growerShares, plantingDates, required seasonId, required hybridId, inspectionTypesIds, createdAt, updatedAt}): _fieldParentId = fieldParentId, _fieldName = fieldName, _fieldNumber = fieldNumber, _hybridName = hybridName, _isCertified = isCertified, _acres = acres, _growerShares = growerShares, _plantingDates = plantingDates, _seasonId = seasonId, _hybridId = hybridId, _inspectionTypesIds = inspectionTypesIds, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory FieldChild({String? id, required String fieldParentId, required String fieldName, required String fieldNumber, required String hybridName, bool? isCertified, FieldAcresObject? acres, List<GrowerShareObject>? growerShares, List<PlantingDateObject>? plantingDates, required String seasonId, required String hybridId, List<String>? inspectionTypesIds}) {
    return FieldChild._internal(
      id: id == null ? UUID.getUUID() : id,
      fieldParentId: fieldParentId,
      fieldName: fieldName,
      fieldNumber: fieldNumber,
      hybridName: hybridName,
      isCertified: isCertified,
      acres: acres,
      growerShares: growerShares != null ? List<GrowerShareObject>.unmodifiable(growerShares) : growerShares,
      plantingDates: plantingDates != null ? List<PlantingDateObject>.unmodifiable(plantingDates) : plantingDates,
      seasonId: seasonId,
      hybridId: hybridId,
      inspectionTypesIds: inspectionTypesIds != null ? List<String>.unmodifiable(inspectionTypesIds) : inspectionTypesIds);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldChild &&
      id == other.id &&
      _fieldParentId == other._fieldParentId &&
      _fieldName == other._fieldName &&
      _fieldNumber == other._fieldNumber &&
      _hybridName == other._hybridName &&
      _isCertified == other._isCertified &&
      _acres == other._acres &&
      DeepCollectionEquality().equals(_growerShares, other._growerShares) &&
      DeepCollectionEquality().equals(_plantingDates, other._plantingDates) &&
      _seasonId == other._seasonId &&
      _hybridId == other._hybridId &&
      DeepCollectionEquality().equals(_inspectionTypesIds, other._inspectionTypesIds);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FieldChild {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("fieldParentId=" + "$_fieldParentId" + ", ");
    buffer.write("fieldName=" + "$_fieldName" + ", ");
    buffer.write("fieldNumber=" + "$_fieldNumber" + ", ");
    buffer.write("hybridName=" + "$_hybridName" + ", ");
    buffer.write("isCertified=" + (_isCertified != null ? _isCertified!.toString() : "null") + ", ");
    buffer.write("acres=" + (_acres != null ? _acres!.toString() : "null") + ", ");
    buffer.write("growerShares=" + (_growerShares != null ? _growerShares!.toString() : "null") + ", ");
    buffer.write("plantingDates=" + (_plantingDates != null ? _plantingDates!.toString() : "null") + ", ");
    buffer.write("seasonId=" + "$_seasonId" + ", ");
    buffer.write("hybridId=" + "$_hybridId" + ", ");
    buffer.write("inspectionTypesIds=" + (_inspectionTypesIds != null ? _inspectionTypesIds!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FieldChild copyWith({String? fieldParentId, String? fieldName, String? fieldNumber, String? hybridName, bool? isCertified, FieldAcresObject? acres, List<GrowerShareObject>? growerShares, List<PlantingDateObject>? plantingDates, String? seasonId, String? hybridId, List<String>? inspectionTypesIds}) {
    return FieldChild._internal(
      id: id,
      fieldParentId: fieldParentId ?? this.fieldParentId,
      fieldName: fieldName ?? this.fieldName,
      fieldNumber: fieldNumber ?? this.fieldNumber,
      hybridName: hybridName ?? this.hybridName,
      isCertified: isCertified ?? this.isCertified,
      acres: acres ?? this.acres,
      growerShares: growerShares ?? this.growerShares,
      plantingDates: plantingDates ?? this.plantingDates,
      seasonId: seasonId ?? this.seasonId,
      hybridId: hybridId ?? this.hybridId,
      inspectionTypesIds: inspectionTypesIds ?? this.inspectionTypesIds);
  }
  
  FieldChild.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _fieldParentId = json['fieldParentId'],
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
      _seasonId = json['seasonId'],
      _hybridId = json['hybridId'],
      _inspectionTypesIds = json['inspectionTypesIds']?.cast<String>(),
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'fieldParentId': _fieldParentId, 'fieldName': _fieldName, 'fieldNumber': _fieldNumber, 'hybridName': _hybridName, 'isCertified': _isCertified, 'acres': _acres?.toJson(), 'growerShares': _growerShares?.map((GrowerShareObject? e) => e?.toJson()).toList(), 'plantingDates': _plantingDates?.map((PlantingDateObject? e) => e?.toJson()).toList(), 'seasonId': _seasonId, 'hybridId': _hybridId, 'inspectionTypesIds': _inspectionTypesIds, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'fieldParentId': _fieldParentId, 'fieldName': _fieldName, 'fieldNumber': _fieldNumber, 'hybridName': _hybridName, 'isCertified': _isCertified, 'acres': _acres, 'growerShares': _growerShares, 'plantingDates': _plantingDates, 'seasonId': _seasonId, 'hybridId': _hybridId, 'inspectionTypesIds': _inspectionTypesIds, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<FieldChildModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<FieldChildModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField FIELDPARENTID = QueryField(fieldName: "fieldParentId");
  static final QueryField FIELDNAME = QueryField(fieldName: "fieldName");
  static final QueryField FIELDNUMBER = QueryField(fieldName: "fieldNumber");
  static final QueryField HYBRIDNAME = QueryField(fieldName: "hybridName");
  static final QueryField ISCERTIFIED = QueryField(fieldName: "isCertified");
  static final QueryField ACRES = QueryField(fieldName: "acres");
  static final QueryField GROWERSHARES = QueryField(fieldName: "growerShares");
  static final QueryField PLANTINGDATES = QueryField(fieldName: "plantingDates");
  static final QueryField SEASONID = QueryField(fieldName: "seasonId");
  static final QueryField HYBRIDID = QueryField(fieldName: "hybridId");
  static final QueryField INSPECTIONTYPESIDS = QueryField(fieldName: "inspectionTypesIds");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FieldChild";
    modelSchemaDefinition.pluralName = "FieldChildren";
    
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
      key: FieldChild.FIELDPARENTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.SEASONID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.HYBRIDID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: FieldChild.INSPECTIONTYPESIDS,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
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