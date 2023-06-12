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


/** This is an auto generated class representing the InspectionParent type in your schema. */
@immutable
class InspectionParent extends Model {
  static const classType = const _InspectionParentModelType();
  final String id;
  final TemporalDate? _scheduledDate;
  final int? _requiredInspections;
  final InspectionFormTypeKey? _inspectionFormType;
  final CompletionStatusKey? _completionStatus;
  final String? _seasonID;
  final List<InspectionChild>? _InspectionChildren;
  final String? _fieldchildID;
  final String? _inspectionTypeID;
  final FieldInspectionModuleKey? _fieldInspectionModule;
  final String? _fieldName;
  final String? _fieldNumber;
  final String? _hybridName;
  final GeoPointObject? _mapCenter;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  InspectionParentModelIdentifier get modelIdentifier {
      return InspectionParentModelIdentifier(
        id: id
      );
  }
  
  TemporalDate? get scheduledDate {
    return _scheduledDate;
  }
  
  int? get requiredInspections {
    return _requiredInspections;
  }
  
  InspectionFormTypeKey? get inspectionFormType {
    return _inspectionFormType;
  }
  
  CompletionStatusKey? get completionStatus {
    return _completionStatus;
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
  
  List<InspectionChild>? get InspectionChildren {
    return _InspectionChildren;
  }
  
  String get fieldchildID {
    try {
      return _fieldchildID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get inspectionTypeID {
    try {
      return _inspectionTypeID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  FieldInspectionModuleKey get fieldInspectionModule {
    try {
      return _fieldInspectionModule!;
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
  
  GeoPointObject get mapCenter {
    try {
      return _mapCenter!;
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
  
  const InspectionParent._internal({required this.id, scheduledDate, requiredInspections, inspectionFormType, completionStatus, required seasonID, InspectionChildren, required fieldchildID, required inspectionTypeID, required fieldInspectionModule, required fieldName, required fieldNumber, required hybridName, required mapCenter, createdAt, updatedAt}): _scheduledDate = scheduledDate, _requiredInspections = requiredInspections, _inspectionFormType = inspectionFormType, _completionStatus = completionStatus, _seasonID = seasonID, _InspectionChildren = InspectionChildren, _fieldchildID = fieldchildID, _inspectionTypeID = inspectionTypeID, _fieldInspectionModule = fieldInspectionModule, _fieldName = fieldName, _fieldNumber = fieldNumber, _hybridName = hybridName, _mapCenter = mapCenter, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory InspectionParent({String? id, TemporalDate? scheduledDate, int? requiredInspections, InspectionFormTypeKey? inspectionFormType, CompletionStatusKey? completionStatus, required String seasonID, List<InspectionChild>? InspectionChildren, required String fieldchildID, required String inspectionTypeID, required FieldInspectionModuleKey fieldInspectionModule, required String fieldName, required String fieldNumber, required String hybridName, required GeoPointObject mapCenter}) {
    return InspectionParent._internal(
      id: id == null ? UUID.getUUID() : id,
      scheduledDate: scheduledDate,
      requiredInspections: requiredInspections,
      inspectionFormType: inspectionFormType,
      completionStatus: completionStatus,
      seasonID: seasonID,
      InspectionChildren: InspectionChildren != null ? List<InspectionChild>.unmodifiable(InspectionChildren) : InspectionChildren,
      fieldchildID: fieldchildID,
      inspectionTypeID: inspectionTypeID,
      fieldInspectionModule: fieldInspectionModule,
      fieldName: fieldName,
      fieldNumber: fieldNumber,
      hybridName: hybridName,
      mapCenter: mapCenter);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionParent &&
      id == other.id &&
      _scheduledDate == other._scheduledDate &&
      _requiredInspections == other._requiredInspections &&
      _inspectionFormType == other._inspectionFormType &&
      _completionStatus == other._completionStatus &&
      _seasonID == other._seasonID &&
      DeepCollectionEquality().equals(_InspectionChildren, other._InspectionChildren) &&
      _fieldchildID == other._fieldchildID &&
      _inspectionTypeID == other._inspectionTypeID &&
      _fieldInspectionModule == other._fieldInspectionModule &&
      _fieldName == other._fieldName &&
      _fieldNumber == other._fieldNumber &&
      _hybridName == other._hybridName &&
      _mapCenter == other._mapCenter;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("InspectionParent {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("scheduledDate=" + (_scheduledDate != null ? _scheduledDate!.format() : "null") + ", ");
    buffer.write("requiredInspections=" + (_requiredInspections != null ? _requiredInspections!.toString() : "null") + ", ");
    buffer.write("inspectionFormType=" + (_inspectionFormType != null ? enumToString(_inspectionFormType)! : "null") + ", ");
    buffer.write("completionStatus=" + (_completionStatus != null ? enumToString(_completionStatus)! : "null") + ", ");
    buffer.write("seasonID=" + "$_seasonID" + ", ");
    buffer.write("fieldchildID=" + "$_fieldchildID" + ", ");
    buffer.write("inspectionTypeID=" + "$_inspectionTypeID" + ", ");
    buffer.write("fieldInspectionModule=" + (_fieldInspectionModule != null ? enumToString(_fieldInspectionModule)! : "null") + ", ");
    buffer.write("fieldName=" + "$_fieldName" + ", ");
    buffer.write("fieldNumber=" + "$_fieldNumber" + ", ");
    buffer.write("hybridName=" + "$_hybridName" + ", ");
    buffer.write("mapCenter=" + (_mapCenter != null ? _mapCenter!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  InspectionParent copyWith({TemporalDate? scheduledDate, int? requiredInspections, InspectionFormTypeKey? inspectionFormType, CompletionStatusKey? completionStatus, String? seasonID, List<InspectionChild>? InspectionChildren, String? fieldchildID, String? inspectionTypeID, FieldInspectionModuleKey? fieldInspectionModule, String? fieldName, String? fieldNumber, String? hybridName, GeoPointObject? mapCenter}) {
    return InspectionParent._internal(
      id: id,
      scheduledDate: scheduledDate ?? this.scheduledDate,
      requiredInspections: requiredInspections ?? this.requiredInspections,
      inspectionFormType: inspectionFormType ?? this.inspectionFormType,
      completionStatus: completionStatus ?? this.completionStatus,
      seasonID: seasonID ?? this.seasonID,
      InspectionChildren: InspectionChildren ?? this.InspectionChildren,
      fieldchildID: fieldchildID ?? this.fieldchildID,
      inspectionTypeID: inspectionTypeID ?? this.inspectionTypeID,
      fieldInspectionModule: fieldInspectionModule ?? this.fieldInspectionModule,
      fieldName: fieldName ?? this.fieldName,
      fieldNumber: fieldNumber ?? this.fieldNumber,
      hybridName: hybridName ?? this.hybridName,
      mapCenter: mapCenter ?? this.mapCenter);
  }
  
  InspectionParent.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _scheduledDate = json['scheduledDate'] != null ? TemporalDate.fromString(json['scheduledDate']) : null,
      _requiredInspections = (json['requiredInspections'] as num?)?.toInt(),
      _inspectionFormType = enumFromString<InspectionFormTypeKey>(json['inspectionFormType'], InspectionFormTypeKey.values),
      _completionStatus = enumFromString<CompletionStatusKey>(json['completionStatus'], CompletionStatusKey.values),
      _seasonID = json['seasonID'],
      _InspectionChildren = json['InspectionChildren'] is List
        ? (json['InspectionChildren'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => InspectionChild.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _fieldchildID = json['fieldchildID'],
      _inspectionTypeID = json['inspectionTypeID'],
      _fieldInspectionModule = enumFromString<FieldInspectionModuleKey>(json['fieldInspectionModule'], FieldInspectionModuleKey.values),
      _fieldName = json['fieldName'],
      _fieldNumber = json['fieldNumber'],
      _hybridName = json['hybridName'],
      _mapCenter = json['mapCenter']?['serializedData'] != null
        ? GeoPointObject.fromJson(new Map<String, dynamic>.from(json['mapCenter']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'scheduledDate': _scheduledDate?.format(), 'requiredInspections': _requiredInspections, 'inspectionFormType': enumToString(_inspectionFormType), 'completionStatus': enumToString(_completionStatus), 'seasonID': _seasonID, 'InspectionChildren': _InspectionChildren?.map((InspectionChild? e) => e?.toJson()).toList(), 'fieldchildID': _fieldchildID, 'inspectionTypeID': _inspectionTypeID, 'fieldInspectionModule': enumToString(_fieldInspectionModule), 'fieldName': _fieldName, 'fieldNumber': _fieldNumber, 'hybridName': _hybridName, 'mapCenter': _mapCenter?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'scheduledDate': _scheduledDate, 'requiredInspections': _requiredInspections, 'inspectionFormType': _inspectionFormType, 'completionStatus': _completionStatus, 'seasonID': _seasonID, 'InspectionChildren': _InspectionChildren, 'fieldchildID': _fieldchildID, 'inspectionTypeID': _inspectionTypeID, 'fieldInspectionModule': _fieldInspectionModule, 'fieldName': _fieldName, 'fieldNumber': _fieldNumber, 'hybridName': _hybridName, 'mapCenter': _mapCenter, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<InspectionParentModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<InspectionParentModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField SCHEDULEDDATE = QueryField(fieldName: "scheduledDate");
  static final QueryField REQUIREDINSPECTIONS = QueryField(fieldName: "requiredInspections");
  static final QueryField INSPECTIONFORMTYPE = QueryField(fieldName: "inspectionFormType");
  static final QueryField COMPLETIONSTATUS = QueryField(fieldName: "completionStatus");
  static final QueryField SEASONID = QueryField(fieldName: "seasonID");
  static final QueryField INSPECTIONCHILDREN = QueryField(
    fieldName: "InspectionChildren",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'InspectionChild'));
  static final QueryField FIELDCHILDID = QueryField(fieldName: "fieldchildID");
  static final QueryField INSPECTIONTYPEID = QueryField(fieldName: "inspectionTypeID");
  static final QueryField FIELDINSPECTIONMODULE = QueryField(fieldName: "fieldInspectionModule");
  static final QueryField FIELDNAME = QueryField(fieldName: "fieldName");
  static final QueryField FIELDNUMBER = QueryField(fieldName: "fieldNumber");
  static final QueryField HYBRIDNAME = QueryField(fieldName: "hybridName");
  static final QueryField MAPCENTER = QueryField(fieldName: "mapCenter");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "InspectionParent";
    modelSchemaDefinition.pluralName = "InspectionParents";
    
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
      ModelIndex(fields: const ["fieldchildID"], name: "byFieldChild")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionParent.SCHEDULEDDATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionParent.REQUIREDINSPECTIONS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionParent.INSPECTIONFORMTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionParent.COMPLETIONSTATUS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionParent.SEASONID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: InspectionParent.INSPECTIONCHILDREN,
      isRequired: false,
      ofModelName: 'InspectionChild',
      associatedKey: InspectionChild.INSPECTIONPARENTID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionParent.FIELDCHILDID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionParent.INSPECTIONTYPEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionParent.FIELDINSPECTIONMODULE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionParent.FIELDNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionParent.FIELDNUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionParent.HYBRIDNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'mapCenter',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'GeoPointObject')
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

class _InspectionParentModelType extends ModelType<InspectionParent> {
  const _InspectionParentModelType();
  
  @override
  InspectionParent fromJson(Map<String, dynamic> jsonData) {
    return InspectionParent.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'InspectionParent';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [InspectionParent] in your schema.
 */
@immutable
class InspectionParentModelIdentifier implements ModelIdentifier<InspectionParent> {
  final String id;

  /** Create an instance of InspectionParentModelIdentifier using [id] the primary key. */
  const InspectionParentModelIdentifier({
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
  String toString() => 'InspectionParentModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is InspectionParentModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}