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


/** This is an auto generated class representing the InspectionType type in your schema. */
@immutable
class InspectionType extends Model {
  static const classType = const _InspectionTypeModelType();
  final String id;
  final FieldInspectionModuleKey? _inspectionModule;
  final CropTypeKey? _cropType;
  final bool? _isOrganic;
  final String? _title;
  final String? _description;
  final int? _defaultRequiredInspections;
  final InspectionFormTypeKey? _inspectionFormType;
  final String? _seasonID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  InspectionTypeModelIdentifier get modelIdentifier {
      return InspectionTypeModelIdentifier(
        id: id
      );
  }
  
  FieldInspectionModuleKey? get inspectionModule {
    return _inspectionModule;
  }
  
  CropTypeKey? get cropType {
    return _cropType;
  }
  
  bool? get isOrganic {
    return _isOrganic;
  }
  
  String? get title {
    return _title;
  }
  
  String? get description {
    return _description;
  }
  
  int? get defaultRequiredInspections {
    return _defaultRequiredInspections;
  }
  
  InspectionFormTypeKey? get inspectionFormType {
    return _inspectionFormType;
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
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const InspectionType._internal({required this.id, inspectionModule, cropType, isOrganic, title, description, defaultRequiredInspections, inspectionFormType, required seasonID, createdAt, updatedAt}): _inspectionModule = inspectionModule, _cropType = cropType, _isOrganic = isOrganic, _title = title, _description = description, _defaultRequiredInspections = defaultRequiredInspections, _inspectionFormType = inspectionFormType, _seasonID = seasonID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory InspectionType({String? id, FieldInspectionModuleKey? inspectionModule, CropTypeKey? cropType, bool? isOrganic, String? title, String? description, int? defaultRequiredInspections, InspectionFormTypeKey? inspectionFormType, required String seasonID}) {
    return InspectionType._internal(
      id: id == null ? UUID.getUUID() : id,
      inspectionModule: inspectionModule,
      cropType: cropType,
      isOrganic: isOrganic,
      title: title,
      description: description,
      defaultRequiredInspections: defaultRequiredInspections,
      inspectionFormType: inspectionFormType,
      seasonID: seasonID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionType &&
      id == other.id &&
      _inspectionModule == other._inspectionModule &&
      _cropType == other._cropType &&
      _isOrganic == other._isOrganic &&
      _title == other._title &&
      _description == other._description &&
      _defaultRequiredInspections == other._defaultRequiredInspections &&
      _inspectionFormType == other._inspectionFormType &&
      _seasonID == other._seasonID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("InspectionType {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("inspectionModule=" + (_inspectionModule != null ? enumToString(_inspectionModule)! : "null") + ", ");
    buffer.write("cropType=" + (_cropType != null ? enumToString(_cropType)! : "null") + ", ");
    buffer.write("isOrganic=" + (_isOrganic != null ? _isOrganic!.toString() : "null") + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("defaultRequiredInspections=" + (_defaultRequiredInspections != null ? _defaultRequiredInspections!.toString() : "null") + ", ");
    buffer.write("inspectionFormType=" + (_inspectionFormType != null ? enumToString(_inspectionFormType)! : "null") + ", ");
    buffer.write("seasonID=" + "$_seasonID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  InspectionType copyWith({FieldInspectionModuleKey? inspectionModule, CropTypeKey? cropType, bool? isOrganic, String? title, String? description, int? defaultRequiredInspections, InspectionFormTypeKey? inspectionFormType, String? seasonID}) {
    return InspectionType._internal(
      id: id,
      inspectionModule: inspectionModule ?? this.inspectionModule,
      cropType: cropType ?? this.cropType,
      isOrganic: isOrganic ?? this.isOrganic,
      title: title ?? this.title,
      description: description ?? this.description,
      defaultRequiredInspections: defaultRequiredInspections ?? this.defaultRequiredInspections,
      inspectionFormType: inspectionFormType ?? this.inspectionFormType,
      seasonID: seasonID ?? this.seasonID);
  }
  
  InspectionType.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _inspectionModule = enumFromString<FieldInspectionModuleKey>(json['inspectionModule'], FieldInspectionModuleKey.values),
      _cropType = enumFromString<CropTypeKey>(json['cropType'], CropTypeKey.values),
      _isOrganic = json['isOrganic'],
      _title = json['title'],
      _description = json['description'],
      _defaultRequiredInspections = (json['defaultRequiredInspections'] as num?)?.toInt(),
      _inspectionFormType = enumFromString<InspectionFormTypeKey>(json['inspectionFormType'], InspectionFormTypeKey.values),
      _seasonID = json['seasonID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'inspectionModule': enumToString(_inspectionModule), 'cropType': enumToString(_cropType), 'isOrganic': _isOrganic, 'title': _title, 'description': _description, 'defaultRequiredInspections': _defaultRequiredInspections, 'inspectionFormType': enumToString(_inspectionFormType), 'seasonID': _seasonID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'inspectionModule': _inspectionModule, 'cropType': _cropType, 'isOrganic': _isOrganic, 'title': _title, 'description': _description, 'defaultRequiredInspections': _defaultRequiredInspections, 'inspectionFormType': _inspectionFormType, 'seasonID': _seasonID, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<InspectionTypeModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<InspectionTypeModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField INSPECTIONMODULE = QueryField(fieldName: "inspectionModule");
  static final QueryField CROPTYPE = QueryField(fieldName: "cropType");
  static final QueryField ISORGANIC = QueryField(fieldName: "isOrganic");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField DEFAULTREQUIREDINSPECTIONS = QueryField(fieldName: "defaultRequiredInspections");
  static final QueryField INSPECTIONFORMTYPE = QueryField(fieldName: "inspectionFormType");
  static final QueryField SEASONID = QueryField(fieldName: "seasonID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "InspectionType";
    modelSchemaDefinition.pluralName = "InspectionTypes";
    
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
      key: InspectionType.INSPECTIONMODULE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionType.CROPTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionType.ISORGANIC,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionType.TITLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionType.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionType.DEFAULTREQUIREDINSPECTIONS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionType.INSPECTIONFORMTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionType.SEASONID,
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

class _InspectionTypeModelType extends ModelType<InspectionType> {
  const _InspectionTypeModelType();
  
  @override
  InspectionType fromJson(Map<String, dynamic> jsonData) {
    return InspectionType.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'InspectionType';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [InspectionType] in your schema.
 */
@immutable
class InspectionTypeModelIdentifier implements ModelIdentifier<InspectionType> {
  final String id;

  /** Create an instance of InspectionTypeModelIdentifier using [id] the primary key. */
  const InspectionTypeModelIdentifier({
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
  String toString() => 'InspectionTypeModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is InspectionTypeModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}