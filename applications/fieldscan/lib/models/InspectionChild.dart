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


/** This is an auto generated class representing the InspectionChild type in your schema. */
@immutable
class InspectionChild extends Model {
  static const classType = const _InspectionChildModelType();
  final String id;
  final InspectionParent? _parent;
  final GeoPointObject? _location;
  final TemporalTimestamp? _timestamp;
  final String? _formData;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  InspectionChildModelIdentifier get modelIdentifier {
      return InspectionChildModelIdentifier(
        id: id
      );
  }
  
  InspectionParent? get parent {
    return _parent;
  }
  
  GeoPointObject? get location {
    return _location;
  }
  
  TemporalTimestamp? get timestamp {
    return _timestamp;
  }
  
  String? get formData {
    return _formData;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const InspectionChild._internal({required this.id, parent, location, timestamp, formData, createdAt, updatedAt}): _parent = parent, _location = location, _timestamp = timestamp, _formData = formData, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory InspectionChild({String? id, InspectionParent? parent, GeoPointObject? location, TemporalTimestamp? timestamp, String? formData}) {
    return InspectionChild._internal(
      id: id == null ? UUID.getUUID() : id,
      parent: parent,
      location: location,
      timestamp: timestamp,
      formData: formData);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionChild &&
      id == other.id &&
      _parent == other._parent &&
      _location == other._location &&
      _timestamp == other._timestamp &&
      _formData == other._formData;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("InspectionChild {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("parent=" + (_parent != null ? _parent!.toString() : "null") + ", ");
    buffer.write("location=" + (_location != null ? _location!.toString() : "null") + ", ");
    buffer.write("timestamp=" + (_timestamp != null ? _timestamp!.toString() : "null") + ", ");
    buffer.write("formData=" + "$_formData" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  InspectionChild copyWith({InspectionParent? parent, GeoPointObject? location, TemporalTimestamp? timestamp, String? formData}) {
    return InspectionChild._internal(
      id: id,
      parent: parent ?? this.parent,
      location: location ?? this.location,
      timestamp: timestamp ?? this.timestamp,
      formData: formData ?? this.formData);
  }
  
  InspectionChild.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _parent = json['parent']?['serializedData'] != null
        ? InspectionParent.fromJson(new Map<String, dynamic>.from(json['parent']['serializedData']))
        : null,
      _location = json['location']?['serializedData'] != null
        ? GeoPointObject.fromJson(new Map<String, dynamic>.from(json['location']['serializedData']))
        : null,
      _timestamp = json['timestamp'] != null ? TemporalTimestamp.fromSeconds(json['timestamp']) : null,
      _formData = json['formData'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'parent': _parent?.toJson(), 'location': _location?.toJson(), 'timestamp': _timestamp?.toSeconds(), 'formData': _formData, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'parent': _parent, 'location': _location, 'timestamp': _timestamp, 'formData': _formData, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<InspectionChildModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<InspectionChildModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField PARENT = QueryField(
    fieldName: "parent",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'InspectionParent'));
  static final QueryField LOCATION = QueryField(fieldName: "location");
  static final QueryField TIMESTAMP = QueryField(fieldName: "timestamp");
  static final QueryField FORMDATA = QueryField(fieldName: "formData");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "InspectionChild";
    modelSchemaDefinition.pluralName = "InspectionChildren";
    
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
      ModelIndex(fields: const ["parentID"], name: "byParent")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: InspectionChild.PARENT,
      isRequired: false,
      targetNames: ['parentID'],
      ofModelName: 'InspectionParent'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'location',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'GeoPointObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionChild.TIMESTAMP,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.timestamp)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionChild.FORMDATA,
      isRequired: false,
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

class _InspectionChildModelType extends ModelType<InspectionChild> {
  const _InspectionChildModelType();
  
  @override
  InspectionChild fromJson(Map<String, dynamic> jsonData) {
    return InspectionChild.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'InspectionChild';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [InspectionChild] in your schema.
 */
@immutable
class InspectionChildModelIdentifier implements ModelIdentifier<InspectionChild> {
  final String id;

  /** Create an instance of InspectionChildModelIdentifier using [id] the primary key. */
  const InspectionChildModelIdentifier({
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
  String toString() => 'InspectionChildModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is InspectionChildModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}