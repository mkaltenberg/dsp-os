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


/** This is an auto generated class representing the MaleInbred type in your schema. */
@immutable
class MaleInbred extends Model {
  static const classType = const _MaleInbredModelType();
  final String id;
  final String? _name;
  final String? _antherColor;
  final String? _glumeColor;
  final String? _silkColor;
  final int? _huTo50Pollen;
  final String? _seasonID;
  final List<Hybrid>? _Hybrids;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  MaleInbredModelIdentifier get modelIdentifier {
      return MaleInbredModelIdentifier(
        id: id
      );
  }
  
  String? get name {
    return _name;
  }
  
  String? get antherColor {
    return _antherColor;
  }
  
  String? get glumeColor {
    return _glumeColor;
  }
  
  String? get silkColor {
    return _silkColor;
  }
  
  int? get huTo50Pollen {
    return _huTo50Pollen;
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
  
  List<Hybrid>? get Hybrids {
    return _Hybrids;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const MaleInbred._internal({required this.id, name, antherColor, glumeColor, silkColor, huTo50Pollen, required seasonID, Hybrids, createdAt, updatedAt}): _name = name, _antherColor = antherColor, _glumeColor = glumeColor, _silkColor = silkColor, _huTo50Pollen = huTo50Pollen, _seasonID = seasonID, _Hybrids = Hybrids, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory MaleInbred({String? id, String? name, String? antherColor, String? glumeColor, String? silkColor, int? huTo50Pollen, required String seasonID, List<Hybrid>? Hybrids}) {
    return MaleInbred._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      antherColor: antherColor,
      glumeColor: glumeColor,
      silkColor: silkColor,
      huTo50Pollen: huTo50Pollen,
      seasonID: seasonID,
      Hybrids: Hybrids != null ? List<Hybrid>.unmodifiable(Hybrids) : Hybrids);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaleInbred &&
      id == other.id &&
      _name == other._name &&
      _antherColor == other._antherColor &&
      _glumeColor == other._glumeColor &&
      _silkColor == other._silkColor &&
      _huTo50Pollen == other._huTo50Pollen &&
      _seasonID == other._seasonID &&
      DeepCollectionEquality().equals(_Hybrids, other._Hybrids);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("MaleInbred {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("antherColor=" + "$_antherColor" + ", ");
    buffer.write("glumeColor=" + "$_glumeColor" + ", ");
    buffer.write("silkColor=" + "$_silkColor" + ", ");
    buffer.write("huTo50Pollen=" + (_huTo50Pollen != null ? _huTo50Pollen!.toString() : "null") + ", ");
    buffer.write("seasonID=" + "$_seasonID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  MaleInbred copyWith({String? name, String? antherColor, String? glumeColor, String? silkColor, int? huTo50Pollen, String? seasonID, List<Hybrid>? Hybrids}) {
    return MaleInbred._internal(
      id: id,
      name: name ?? this.name,
      antherColor: antherColor ?? this.antherColor,
      glumeColor: glumeColor ?? this.glumeColor,
      silkColor: silkColor ?? this.silkColor,
      huTo50Pollen: huTo50Pollen ?? this.huTo50Pollen,
      seasonID: seasonID ?? this.seasonID,
      Hybrids: Hybrids ?? this.Hybrids);
  }
  
  MaleInbred.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _antherColor = json['antherColor'],
      _glumeColor = json['glumeColor'],
      _silkColor = json['silkColor'],
      _huTo50Pollen = (json['huTo50Pollen'] as num?)?.toInt(),
      _seasonID = json['seasonID'],
      _Hybrids = json['Hybrids'] is List
        ? (json['Hybrids'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Hybrid.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'antherColor': _antherColor, 'glumeColor': _glumeColor, 'silkColor': _silkColor, 'huTo50Pollen': _huTo50Pollen, 'seasonID': _seasonID, 'Hybrids': _Hybrids?.map((Hybrid? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'antherColor': _antherColor, 'glumeColor': _glumeColor, 'silkColor': _silkColor, 'huTo50Pollen': _huTo50Pollen, 'seasonID': _seasonID, 'Hybrids': _Hybrids, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<MaleInbredModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<MaleInbredModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField ANTHERCOLOR = QueryField(fieldName: "antherColor");
  static final QueryField GLUMECOLOR = QueryField(fieldName: "glumeColor");
  static final QueryField SILKCOLOR = QueryField(fieldName: "silkColor");
  static final QueryField HUTO50POLLEN = QueryField(fieldName: "huTo50Pollen");
  static final QueryField SEASONID = QueryField(fieldName: "seasonID");
  static final QueryField HYBRIDS = QueryField(
    fieldName: "Hybrids",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Hybrid'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "MaleInbred";
    modelSchemaDefinition.pluralName = "MaleInbreds";
    
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
      key: MaleInbred.NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: MaleInbred.ANTHERCOLOR,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: MaleInbred.GLUMECOLOR,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: MaleInbred.SILKCOLOR,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: MaleInbred.HUTO50POLLEN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: MaleInbred.SEASONID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: MaleInbred.HYBRIDS,
      isRequired: false,
      ofModelName: 'Hybrid',
      associatedKey: Hybrid.MALEINBREDID
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

class _MaleInbredModelType extends ModelType<MaleInbred> {
  const _MaleInbredModelType();
  
  @override
  MaleInbred fromJson(Map<String, dynamic> jsonData) {
    return MaleInbred.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'MaleInbred';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [MaleInbred] in your schema.
 */
@immutable
class MaleInbredModelIdentifier implements ModelIdentifier<MaleInbred> {
  final String id;

  /** Create an instance of MaleInbredModelIdentifier using [id] the primary key. */
  const MaleInbredModelIdentifier({
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
  String toString() => 'MaleInbredModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is MaleInbredModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}