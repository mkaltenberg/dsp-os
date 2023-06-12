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
  final GeoPointObject? _location;
  final String? _seasonID;
  final DetasselingSeedCornStandardInspectionFormDataObject? _detasselingStandardSeedCornFormObject;
  final PopulationsStandardSeedCornInspectionFormDataObject? _populationsStandardSeedCornFormObject;
  final ScoutingStandardSeedCornInspectionFormDataObject? _scoutingStandardSeedCornFormObject;
  final LeafToTasselSeedCornStandardInspectionFormDataObject? _leafToTasselStandardSeedCornFormObject;
  final String? _inspectionParentID;
  final String? _userEmail;
  final String? _userFirstName;
  final String? _userLastName;
  final TemporalDate? _date;
  final TemporalTime? _time;
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
  
  GeoPointObject get location {
    try {
      return _location!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  DetasselingSeedCornStandardInspectionFormDataObject? get detasselingStandardSeedCornFormObject {
    return _detasselingStandardSeedCornFormObject;
  }
  
  PopulationsStandardSeedCornInspectionFormDataObject? get populationsStandardSeedCornFormObject {
    return _populationsStandardSeedCornFormObject;
  }
  
  ScoutingStandardSeedCornInspectionFormDataObject? get scoutingStandardSeedCornFormObject {
    return _scoutingStandardSeedCornFormObject;
  }
  
  LeafToTasselSeedCornStandardInspectionFormDataObject? get leafToTasselStandardSeedCornFormObject {
    return _leafToTasselStandardSeedCornFormObject;
  }
  
  String get inspectionParentID {
    try {
      return _inspectionParentID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get userEmail {
    try {
      return _userEmail!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get userFirstName {
    try {
      return _userFirstName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get userLastName {
    try {
      return _userLastName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDate get date {
    try {
      return _date!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalTime get time {
    try {
      return _time!;
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
  
  const InspectionChild._internal({required this.id, required location, required seasonID, detasselingStandardSeedCornFormObject, populationsStandardSeedCornFormObject, scoutingStandardSeedCornFormObject, leafToTasselStandardSeedCornFormObject, required inspectionParentID, required userEmail, required userFirstName, required userLastName, required date, required time, createdAt, updatedAt}): _location = location, _seasonID = seasonID, _detasselingStandardSeedCornFormObject = detasselingStandardSeedCornFormObject, _populationsStandardSeedCornFormObject = populationsStandardSeedCornFormObject, _scoutingStandardSeedCornFormObject = scoutingStandardSeedCornFormObject, _leafToTasselStandardSeedCornFormObject = leafToTasselStandardSeedCornFormObject, _inspectionParentID = inspectionParentID, _userEmail = userEmail, _userFirstName = userFirstName, _userLastName = userLastName, _date = date, _time = time, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory InspectionChild({String? id, required GeoPointObject location, required String seasonID, DetasselingSeedCornStandardInspectionFormDataObject? detasselingStandardSeedCornFormObject, PopulationsStandardSeedCornInspectionFormDataObject? populationsStandardSeedCornFormObject, ScoutingStandardSeedCornInspectionFormDataObject? scoutingStandardSeedCornFormObject, LeafToTasselSeedCornStandardInspectionFormDataObject? leafToTasselStandardSeedCornFormObject, required String inspectionParentID, required String userEmail, required String userFirstName, required String userLastName, required TemporalDate date, required TemporalTime time}) {
    return InspectionChild._internal(
      id: id == null ? UUID.getUUID() : id,
      location: location,
      seasonID: seasonID,
      detasselingStandardSeedCornFormObject: detasselingStandardSeedCornFormObject,
      populationsStandardSeedCornFormObject: populationsStandardSeedCornFormObject,
      scoutingStandardSeedCornFormObject: scoutingStandardSeedCornFormObject,
      leafToTasselStandardSeedCornFormObject: leafToTasselStandardSeedCornFormObject,
      inspectionParentID: inspectionParentID,
      userEmail: userEmail,
      userFirstName: userFirstName,
      userLastName: userLastName,
      date: date,
      time: time);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InspectionChild &&
      id == other.id &&
      _location == other._location &&
      _seasonID == other._seasonID &&
      _detasselingStandardSeedCornFormObject == other._detasselingStandardSeedCornFormObject &&
      _populationsStandardSeedCornFormObject == other._populationsStandardSeedCornFormObject &&
      _scoutingStandardSeedCornFormObject == other._scoutingStandardSeedCornFormObject &&
      _leafToTasselStandardSeedCornFormObject == other._leafToTasselStandardSeedCornFormObject &&
      _inspectionParentID == other._inspectionParentID &&
      _userEmail == other._userEmail &&
      _userFirstName == other._userFirstName &&
      _userLastName == other._userLastName &&
      _date == other._date &&
      _time == other._time;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("InspectionChild {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("location=" + (_location != null ? _location!.toString() : "null") + ", ");
    buffer.write("seasonID=" + "$_seasonID" + ", ");
    buffer.write("detasselingStandardSeedCornFormObject=" + (_detasselingStandardSeedCornFormObject != null ? _detasselingStandardSeedCornFormObject!.toString() : "null") + ", ");
    buffer.write("populationsStandardSeedCornFormObject=" + (_populationsStandardSeedCornFormObject != null ? _populationsStandardSeedCornFormObject!.toString() : "null") + ", ");
    buffer.write("scoutingStandardSeedCornFormObject=" + (_scoutingStandardSeedCornFormObject != null ? _scoutingStandardSeedCornFormObject!.toString() : "null") + ", ");
    buffer.write("leafToTasselStandardSeedCornFormObject=" + (_leafToTasselStandardSeedCornFormObject != null ? _leafToTasselStandardSeedCornFormObject!.toString() : "null") + ", ");
    buffer.write("inspectionParentID=" + "$_inspectionParentID" + ", ");
    buffer.write("userEmail=" + "$_userEmail" + ", ");
    buffer.write("userFirstName=" + "$_userFirstName" + ", ");
    buffer.write("userLastName=" + "$_userLastName" + ", ");
    buffer.write("date=" + (_date != null ? _date!.format() : "null") + ", ");
    buffer.write("time=" + (_time != null ? _time!.format() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  InspectionChild copyWith({GeoPointObject? location, String? seasonID, DetasselingSeedCornStandardInspectionFormDataObject? detasselingStandardSeedCornFormObject, PopulationsStandardSeedCornInspectionFormDataObject? populationsStandardSeedCornFormObject, ScoutingStandardSeedCornInspectionFormDataObject? scoutingStandardSeedCornFormObject, LeafToTasselSeedCornStandardInspectionFormDataObject? leafToTasselStandardSeedCornFormObject, String? inspectionParentID, String? userEmail, String? userFirstName, String? userLastName, TemporalDate? date, TemporalTime? time}) {
    return InspectionChild._internal(
      id: id,
      location: location ?? this.location,
      seasonID: seasonID ?? this.seasonID,
      detasselingStandardSeedCornFormObject: detasselingStandardSeedCornFormObject ?? this.detasselingStandardSeedCornFormObject,
      populationsStandardSeedCornFormObject: populationsStandardSeedCornFormObject ?? this.populationsStandardSeedCornFormObject,
      scoutingStandardSeedCornFormObject: scoutingStandardSeedCornFormObject ?? this.scoutingStandardSeedCornFormObject,
      leafToTasselStandardSeedCornFormObject: leafToTasselStandardSeedCornFormObject ?? this.leafToTasselStandardSeedCornFormObject,
      inspectionParentID: inspectionParentID ?? this.inspectionParentID,
      userEmail: userEmail ?? this.userEmail,
      userFirstName: userFirstName ?? this.userFirstName,
      userLastName: userLastName ?? this.userLastName,
      date: date ?? this.date,
      time: time ?? this.time);
  }
  
  InspectionChild.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _location = json['location']?['serializedData'] != null
        ? GeoPointObject.fromJson(new Map<String, dynamic>.from(json['location']['serializedData']))
        : null,
      _seasonID = json['seasonID'],
      _detasselingStandardSeedCornFormObject = json['detasselingStandardSeedCornFormObject']?['serializedData'] != null
        ? DetasselingSeedCornStandardInspectionFormDataObject.fromJson(new Map<String, dynamic>.from(json['detasselingStandardSeedCornFormObject']['serializedData']))
        : null,
      _populationsStandardSeedCornFormObject = json['populationsStandardSeedCornFormObject']?['serializedData'] != null
        ? PopulationsStandardSeedCornInspectionFormDataObject.fromJson(new Map<String, dynamic>.from(json['populationsStandardSeedCornFormObject']['serializedData']))
        : null,
      _scoutingStandardSeedCornFormObject = json['scoutingStandardSeedCornFormObject']?['serializedData'] != null
        ? ScoutingStandardSeedCornInspectionFormDataObject.fromJson(new Map<String, dynamic>.from(json['scoutingStandardSeedCornFormObject']['serializedData']))
        : null,
      _leafToTasselStandardSeedCornFormObject = json['leafToTasselStandardSeedCornFormObject']?['serializedData'] != null
        ? LeafToTasselSeedCornStandardInspectionFormDataObject.fromJson(new Map<String, dynamic>.from(json['leafToTasselStandardSeedCornFormObject']['serializedData']))
        : null,
      _inspectionParentID = json['inspectionParentID'],
      _userEmail = json['userEmail'],
      _userFirstName = json['userFirstName'],
      _userLastName = json['userLastName'],
      _date = json['date'] != null ? TemporalDate.fromString(json['date']) : null,
      _time = json['time'] != null ? TemporalTime.fromString(json['time']) : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'location': _location?.toJson(), 'seasonID': _seasonID, 'detasselingStandardSeedCornFormObject': _detasselingStandardSeedCornFormObject?.toJson(), 'populationsStandardSeedCornFormObject': _populationsStandardSeedCornFormObject?.toJson(), 'scoutingStandardSeedCornFormObject': _scoutingStandardSeedCornFormObject?.toJson(), 'leafToTasselStandardSeedCornFormObject': _leafToTasselStandardSeedCornFormObject?.toJson(), 'inspectionParentID': _inspectionParentID, 'userEmail': _userEmail, 'userFirstName': _userFirstName, 'userLastName': _userLastName, 'date': _date?.format(), 'time': _time?.format(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'location': _location, 'seasonID': _seasonID, 'detasselingStandardSeedCornFormObject': _detasselingStandardSeedCornFormObject, 'populationsStandardSeedCornFormObject': _populationsStandardSeedCornFormObject, 'scoutingStandardSeedCornFormObject': _scoutingStandardSeedCornFormObject, 'leafToTasselStandardSeedCornFormObject': _leafToTasselStandardSeedCornFormObject, 'inspectionParentID': _inspectionParentID, 'userEmail': _userEmail, 'userFirstName': _userFirstName, 'userLastName': _userLastName, 'date': _date, 'time': _time, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<InspectionChildModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<InspectionChildModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField LOCATION = QueryField(fieldName: "location");
  static final QueryField SEASONID = QueryField(fieldName: "seasonID");
  static final QueryField DETASSELINGSTANDARDSEEDCORNFORMOBJECT = QueryField(fieldName: "detasselingStandardSeedCornFormObject");
  static final QueryField POPULATIONSSTANDARDSEEDCORNFORMOBJECT = QueryField(fieldName: "populationsStandardSeedCornFormObject");
  static final QueryField SCOUTINGSTANDARDSEEDCORNFORMOBJECT = QueryField(fieldName: "scoutingStandardSeedCornFormObject");
  static final QueryField LEAFTOTASSELSTANDARDSEEDCORNFORMOBJECT = QueryField(fieldName: "leafToTasselStandardSeedCornFormObject");
  static final QueryField INSPECTIONPARENTID = QueryField(fieldName: "inspectionParentID");
  static final QueryField USEREMAIL = QueryField(fieldName: "userEmail");
  static final QueryField USERFIRSTNAME = QueryField(fieldName: "userFirstName");
  static final QueryField USERLASTNAME = QueryField(fieldName: "userLastName");
  static final QueryField DATE = QueryField(fieldName: "date");
  static final QueryField TIME = QueryField(fieldName: "time");
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
      ModelIndex(fields: const ["inspectionParentID"], name: "byInspectionParent")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'location',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'GeoPointObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionChild.SEASONID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'detasselingStandardSeedCornFormObject',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'DetasselingSeedCornStandardInspectionFormDataObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'populationsStandardSeedCornFormObject',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'PopulationsStandardSeedCornInspectionFormDataObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'scoutingStandardSeedCornFormObject',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'ScoutingStandardSeedCornInspectionFormDataObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'leafToTasselStandardSeedCornFormObject',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'LeafToTasselSeedCornStandardInspectionFormDataObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionChild.INSPECTIONPARENTID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionChild.USEREMAIL,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionChild.USERFIRSTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionChild.USERLASTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionChild.DATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: InspectionChild.TIME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.time)
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