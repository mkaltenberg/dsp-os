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


/** This is an auto generated class representing the CropDamageOption type in your schema. */
@immutable
class CropDamageOption extends Model {
  static const classType = const _CropDamageOptionModelType();
  final String id;
  final CropDamageCategoryKey? _category;
  final List<CropTypeKey>? _applicableCropTypes;
  final String? _name;
  final String? _description;
  final String? _seasonID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CropDamageOptionModelIdentifier get modelIdentifier {
      return CropDamageOptionModelIdentifier(
        id: id
      );
  }
  
  CropDamageCategoryKey? get category {
    return _category;
  }
  
  List<CropTypeKey>? get applicableCropTypes {
    return _applicableCropTypes;
  }
  
  String? get name {
    return _name;
  }
  
  String? get description {
    return _description;
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
  
  const CropDamageOption._internal({required this.id, category, applicableCropTypes, name, description, required seasonID, createdAt, updatedAt}): _category = category, _applicableCropTypes = applicableCropTypes, _name = name, _description = description, _seasonID = seasonID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory CropDamageOption({String? id, CropDamageCategoryKey? category, List<CropTypeKey>? applicableCropTypes, String? name, String? description, required String seasonID}) {
    return CropDamageOption._internal(
      id: id == null ? UUID.getUUID() : id,
      category: category,
      applicableCropTypes: applicableCropTypes != null ? List<CropTypeKey>.unmodifiable(applicableCropTypes) : applicableCropTypes,
      name: name,
      description: description,
      seasonID: seasonID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CropDamageOption &&
      id == other.id &&
      _category == other._category &&
      DeepCollectionEquality().equals(_applicableCropTypes, other._applicableCropTypes) &&
      _name == other._name &&
      _description == other._description &&
      _seasonID == other._seasonID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CropDamageOption {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("category=" + (_category != null ? enumToString(_category)! : "null") + ", ");
    buffer.write("applicableCropTypes=" + (_applicableCropTypes != null ? _applicableCropTypes!.map((e) => enumToString(e)).toString() : "null") + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("seasonID=" + "$_seasonID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CropDamageOption copyWith({CropDamageCategoryKey? category, List<CropTypeKey>? applicableCropTypes, String? name, String? description, String? seasonID}) {
    return CropDamageOption._internal(
      id: id,
      category: category ?? this.category,
      applicableCropTypes: applicableCropTypes ?? this.applicableCropTypes,
      name: name ?? this.name,
      description: description ?? this.description,
      seasonID: seasonID ?? this.seasonID);
  }
  
  CropDamageOption.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _category = enumFromString<CropDamageCategoryKey>(json['category'], CropDamageCategoryKey.values),
      _applicableCropTypes = json['applicableCropTypes'] is List
        ? (json['applicableCropTypes'] as List)
          .map((e) => enumFromString<CropTypeKey>(e, CropTypeKey.values)!)
          .toList()
        : null,
      _name = json['name'],
      _description = json['description'],
      _seasonID = json['seasonID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'category': enumToString(_category), 'applicableCropTypes': _applicableCropTypes?.map((e) => enumToString(e)).toList(), 'name': _name, 'description': _description, 'seasonID': _seasonID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'category': _category, 'applicableCropTypes': _applicableCropTypes, 'name': _name, 'description': _description, 'seasonID': _seasonID, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<CropDamageOptionModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<CropDamageOptionModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField CATEGORY = QueryField(fieldName: "category");
  static final QueryField APPLICABLECROPTYPES = QueryField(fieldName: "applicableCropTypes");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField SEASONID = QueryField(fieldName: "seasonID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CropDamageOption";
    modelSchemaDefinition.pluralName = "CropDamageOptions";
    
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
      key: CropDamageOption.CATEGORY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CropDamageOption.APPLICABLECROPTYPES,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.enumeration))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CropDamageOption.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CropDamageOption.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CropDamageOption.SEASONID,
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

class _CropDamageOptionModelType extends ModelType<CropDamageOption> {
  const _CropDamageOptionModelType();
  
  @override
  CropDamageOption fromJson(Map<String, dynamic> jsonData) {
    return CropDamageOption.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'CropDamageOption';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CropDamageOption] in your schema.
 */
@immutable
class CropDamageOptionModelIdentifier implements ModelIdentifier<CropDamageOption> {
  final String id;

  /** Create an instance of CropDamageOptionModelIdentifier using [id] the primary key. */
  const CropDamageOptionModelIdentifier({
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
  String toString() => 'CropDamageOptionModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CropDamageOptionModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}