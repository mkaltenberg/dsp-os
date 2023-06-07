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
  final FieldChild? _fieldChild;
  final InspectionFormTypeKey? _inspectionFormType;
  final CompletionStatusKey? _completionStatus;
  final List<InspectionChild>? _children;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _inspectionParentFieldChildId;

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
  
  FieldChild? get fieldChild {
    return _fieldChild;
  }
  
  InspectionFormTypeKey? get inspectionFormType {
    return _inspectionFormType;
  }
  
  CompletionStatusKey? get completionStatus {
    return _completionStatus;
  }
  
  List<InspectionChild>? get children {
    return _children;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get inspectionParentFieldChildId {
    return _inspectionParentFieldChildId;
  }
  
  const InspectionParent._internal({required this.id, scheduledDate, requiredInspections, fieldChild, inspectionFormType, completionStatus, children, createdAt, updatedAt, inspectionParentFieldChildId}): _scheduledDate = scheduledDate, _requiredInspections = requiredInspections, _fieldChild = fieldChild, _inspectionFormType = inspectionFormType, _completionStatus = completionStatus, _children = children, _createdAt = createdAt, _updatedAt = updatedAt, _inspectionParentFieldChildId = inspectionParentFieldChildId;
  
  factory InspectionParent({String? id, TemporalDate? scheduledDate, int? requiredInspections, FieldChild? fieldChild, InspectionFormTypeKey? inspectionFormType, CompletionStatusKey? completionStatus, List<InspectionChild>? children, String? inspectionParentFieldChildId}) {
    return InspectionParent._internal(
      id: id == null ? UUID.getUUID() : id,
      scheduledDate: scheduledDate,
      requiredInspections: requiredInspections,
      fieldChild: fieldChild,
      inspectionFormType: inspectionFormType,
      completionStatus: completionStatus,
      children: children != null ? List<InspectionChild>.unmodifiable(children) : children,
      inspectionParentFieldChildId: inspectionParentFieldChildId);
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
      _fieldChild == other._fieldChild &&
      _inspectionFormType == other._inspectionFormType &&
      _completionStatus == other._completionStatus &&
      DeepCollectionEquality().equals(_children, other._children) &&
      _inspectionParentFieldChildId == other._inspectionParentFieldChildId;
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
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("inspectionParentFieldChildId=" + "$_inspectionParentFieldChildId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  InspectionParent copyWith({TemporalDate? scheduledDate, int? requiredInspections, FieldChild? fieldChild, InspectionFormTypeKey? inspectionFormType, CompletionStatusKey? completionStatus, List<InspectionChild>? children, String? inspectionParentFieldChildId}) {
    return InspectionParent._internal(
      id: id,
      scheduledDate: scheduledDate ?? this.scheduledDate,
      requiredInspections: requiredInspections ?? this.requiredInspections,
      fieldChild: fieldChild ?? this.fieldChild,
      inspectionFormType: inspectionFormType ?? this.inspectionFormType,
      completionStatus: completionStatus ?? this.completionStatus,
      children: children ?? this.children,
      inspectionParentFieldChildId: inspectionParentFieldChildId ?? this.inspectionParentFieldChildId);
  }
  
  InspectionParent.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _scheduledDate = json['scheduledDate'] != null ? TemporalDate.fromString(json['scheduledDate']) : null,
      _requiredInspections = (json['requiredInspections'] as num?)?.toInt(),
      _fieldChild = json['fieldChild']?['serializedData'] != null
        ? FieldChild.fromJson(new Map<String, dynamic>.from(json['fieldChild']['serializedData']))
        : null,
      _inspectionFormType = enumFromString<InspectionFormTypeKey>(json['inspectionFormType'], InspectionFormTypeKey.values),
      _completionStatus = enumFromString<CompletionStatusKey>(json['completionStatus'], CompletionStatusKey.values),
      _children = json['children'] is List
        ? (json['children'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => InspectionChild.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _inspectionParentFieldChildId = json['inspectionParentFieldChildId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'scheduledDate': _scheduledDate?.format(), 'requiredInspections': _requiredInspections, 'fieldChild': _fieldChild?.toJson(), 'inspectionFormType': enumToString(_inspectionFormType), 'completionStatus': enumToString(_completionStatus), 'children': _children?.map((InspectionChild? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'inspectionParentFieldChildId': _inspectionParentFieldChildId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'scheduledDate': _scheduledDate, 'requiredInspections': _requiredInspections, 'fieldChild': _fieldChild, 'inspectionFormType': _inspectionFormType, 'completionStatus': _completionStatus, 'children': _children, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'inspectionParentFieldChildId': _inspectionParentFieldChildId
  };

  static final QueryModelIdentifier<InspectionParentModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<InspectionParentModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField SCHEDULEDDATE = QueryField(fieldName: "scheduledDate");
  static final QueryField REQUIREDINSPECTIONS = QueryField(fieldName: "requiredInspections");
  static final QueryField FIELDCHILD = QueryField(
    fieldName: "fieldChild",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'FieldChild'));
  static final QueryField INSPECTIONFORMTYPE = QueryField(fieldName: "inspectionFormType");
  static final QueryField COMPLETIONSTATUS = QueryField(fieldName: "completionStatus");
  static final QueryField CHILDREN = QueryField(
    fieldName: "children",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'InspectionChild'));
  static final QueryField INSPECTIONPARENTFIELDCHILDID = QueryField(fieldName: "inspectionParentFieldChildId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "InspectionParent";
    modelSchemaDefinition.pluralName = "InspectionParents";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: InspectionParent.FIELDCHILD,
      isRequired: false,
      ofModelName: 'FieldChild',
      associatedKey: FieldChild.ID
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: InspectionParent.CHILDREN,
      isRequired: false,
      ofModelName: 'InspectionChild',
      associatedKey: InspectionChild.PARENT
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
      key: InspectionParent.INSPECTIONPARENTFIELDCHILDID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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