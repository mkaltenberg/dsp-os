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


/** This is an auto generated class representing the ScoutingStandardSeedCornInspectionFormDataObject type in your schema. */
@immutable
class ScoutingStandardSeedCornInspectionFormDataObject {
  final CornGrowthStageKey? _femaleGrowthStage;
  final CornGrowthStageKey? _maleGrowthStageOne;
  final CornGrowthStageKey? _maleGrowthStageTwo;
  final bool? _isWatering;
  final List<CropDamageObject>? _weeds;
  final List<CropDamageObject>? _insects;
  final List<CropDamageObject>? _pests;
  final List<CropDamageObject>? _diseases;
  final String? _comments;
  final bool? _areRoguesPresent;

  CornGrowthStageKey get femaleGrowthStage {
    try {
      return _femaleGrowthStage!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  CornGrowthStageKey get maleGrowthStageOne {
    try {
      return _maleGrowthStageOne!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  CornGrowthStageKey get maleGrowthStageTwo {
    try {
      return _maleGrowthStageTwo!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool get isWatering {
    try {
      return _isWatering!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<CropDamageObject>? get weeds {
    return _weeds;
  }
  
  List<CropDamageObject>? get insects {
    return _insects;
  }
  
  List<CropDamageObject>? get pests {
    return _pests;
  }
  
  List<CropDamageObject>? get diseases {
    return _diseases;
  }
  
  String? get comments {
    return _comments;
  }
  
  bool get areRoguesPresent {
    try {
      return _areRoguesPresent!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const ScoutingStandardSeedCornInspectionFormDataObject._internal({required femaleGrowthStage, required maleGrowthStageOne, required maleGrowthStageTwo, required isWatering, weeds, insects, pests, diseases, comments, required areRoguesPresent}): _femaleGrowthStage = femaleGrowthStage, _maleGrowthStageOne = maleGrowthStageOne, _maleGrowthStageTwo = maleGrowthStageTwo, _isWatering = isWatering, _weeds = weeds, _insects = insects, _pests = pests, _diseases = diseases, _comments = comments, _areRoguesPresent = areRoguesPresent;
  
  factory ScoutingStandardSeedCornInspectionFormDataObject({required CornGrowthStageKey femaleGrowthStage, required CornGrowthStageKey maleGrowthStageOne, required CornGrowthStageKey maleGrowthStageTwo, required bool isWatering, List<CropDamageObject>? weeds, List<CropDamageObject>? insects, List<CropDamageObject>? pests, List<CropDamageObject>? diseases, String? comments, required bool areRoguesPresent}) {
    return ScoutingStandardSeedCornInspectionFormDataObject._internal(
      femaleGrowthStage: femaleGrowthStage,
      maleGrowthStageOne: maleGrowthStageOne,
      maleGrowthStageTwo: maleGrowthStageTwo,
      isWatering: isWatering,
      weeds: weeds != null ? List<CropDamageObject>.unmodifiable(weeds) : weeds,
      insects: insects != null ? List<CropDamageObject>.unmodifiable(insects) : insects,
      pests: pests != null ? List<CropDamageObject>.unmodifiable(pests) : pests,
      diseases: diseases != null ? List<CropDamageObject>.unmodifiable(diseases) : diseases,
      comments: comments,
      areRoguesPresent: areRoguesPresent);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScoutingStandardSeedCornInspectionFormDataObject &&
      _femaleGrowthStage == other._femaleGrowthStage &&
      _maleGrowthStageOne == other._maleGrowthStageOne &&
      _maleGrowthStageTwo == other._maleGrowthStageTwo &&
      _isWatering == other._isWatering &&
      DeepCollectionEquality().equals(_weeds, other._weeds) &&
      DeepCollectionEquality().equals(_insects, other._insects) &&
      DeepCollectionEquality().equals(_pests, other._pests) &&
      DeepCollectionEquality().equals(_diseases, other._diseases) &&
      _comments == other._comments &&
      _areRoguesPresent == other._areRoguesPresent;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ScoutingStandardSeedCornInspectionFormDataObject {");
    buffer.write("femaleGrowthStage=" + (_femaleGrowthStage != null ? enumToString(_femaleGrowthStage)! : "null") + ", ");
    buffer.write("maleGrowthStageOne=" + (_maleGrowthStageOne != null ? enumToString(_maleGrowthStageOne)! : "null") + ", ");
    buffer.write("maleGrowthStageTwo=" + (_maleGrowthStageTwo != null ? enumToString(_maleGrowthStageTwo)! : "null") + ", ");
    buffer.write("isWatering=" + (_isWatering != null ? _isWatering!.toString() : "null") + ", ");
    buffer.write("weeds=" + (_weeds != null ? _weeds!.toString() : "null") + ", ");
    buffer.write("insects=" + (_insects != null ? _insects!.toString() : "null") + ", ");
    buffer.write("pests=" + (_pests != null ? _pests!.toString() : "null") + ", ");
    buffer.write("diseases=" + (_diseases != null ? _diseases!.toString() : "null") + ", ");
    buffer.write("comments=" + "$_comments" + ", ");
    buffer.write("areRoguesPresent=" + (_areRoguesPresent != null ? _areRoguesPresent!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ScoutingStandardSeedCornInspectionFormDataObject copyWith({CornGrowthStageKey? femaleGrowthStage, CornGrowthStageKey? maleGrowthStageOne, CornGrowthStageKey? maleGrowthStageTwo, bool? isWatering, List<CropDamageObject>? weeds, List<CropDamageObject>? insects, List<CropDamageObject>? pests, List<CropDamageObject>? diseases, String? comments, bool? areRoguesPresent}) {
    return ScoutingStandardSeedCornInspectionFormDataObject._internal(
      femaleGrowthStage: femaleGrowthStage ?? this.femaleGrowthStage,
      maleGrowthStageOne: maleGrowthStageOne ?? this.maleGrowthStageOne,
      maleGrowthStageTwo: maleGrowthStageTwo ?? this.maleGrowthStageTwo,
      isWatering: isWatering ?? this.isWatering,
      weeds: weeds ?? this.weeds,
      insects: insects ?? this.insects,
      pests: pests ?? this.pests,
      diseases: diseases ?? this.diseases,
      comments: comments ?? this.comments,
      areRoguesPresent: areRoguesPresent ?? this.areRoguesPresent);
  }
  
  ScoutingStandardSeedCornInspectionFormDataObject.fromJson(Map<String, dynamic> json)  
    : _femaleGrowthStage = enumFromString<CornGrowthStageKey>(json['femaleGrowthStage'], CornGrowthStageKey.values),
      _maleGrowthStageOne = enumFromString<CornGrowthStageKey>(json['maleGrowthStageOne'], CornGrowthStageKey.values),
      _maleGrowthStageTwo = enumFromString<CornGrowthStageKey>(json['maleGrowthStageTwo'], CornGrowthStageKey.values),
      _isWatering = json['isWatering'],
      _weeds = json['weeds'] is List
        ? (json['weeds'] as List)
          .where((e) => e != null)
          .map((e) => CropDamageObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _insects = json['insects'] is List
        ? (json['insects'] as List)
          .where((e) => e != null)
          .map((e) => CropDamageObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _pests = json['pests'] is List
        ? (json['pests'] as List)
          .where((e) => e != null)
          .map((e) => CropDamageObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _diseases = json['diseases'] is List
        ? (json['diseases'] as List)
          .where((e) => e != null)
          .map((e) => CropDamageObject.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _comments = json['comments'],
      _areRoguesPresent = json['areRoguesPresent'];
  
  Map<String, dynamic> toJson() => {
    'femaleGrowthStage': enumToString(_femaleGrowthStage), 'maleGrowthStageOne': enumToString(_maleGrowthStageOne), 'maleGrowthStageTwo': enumToString(_maleGrowthStageTwo), 'isWatering': _isWatering, 'weeds': _weeds?.map((CropDamageObject? e) => e?.toJson()).toList(), 'insects': _insects?.map((CropDamageObject? e) => e?.toJson()).toList(), 'pests': _pests?.map((CropDamageObject? e) => e?.toJson()).toList(), 'diseases': _diseases?.map((CropDamageObject? e) => e?.toJson()).toList(), 'comments': _comments, 'areRoguesPresent': _areRoguesPresent
  };
  
  Map<String, Object?> toMap() => {
    'femaleGrowthStage': _femaleGrowthStage, 'maleGrowthStageOne': _maleGrowthStageOne, 'maleGrowthStageTwo': _maleGrowthStageTwo, 'isWatering': _isWatering, 'weeds': _weeds, 'insects': _insects, 'pests': _pests, 'diseases': _diseases, 'comments': _comments, 'areRoguesPresent': _areRoguesPresent
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ScoutingStandardSeedCornInspectionFormDataObject";
    modelSchemaDefinition.pluralName = "ScoutingStandardSeedCornInspectionFormDataObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'femaleGrowthStage',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'maleGrowthStageOne',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'maleGrowthStageTwo',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'isWatering',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'weeds',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'CropDamageObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'insects',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'CropDamageObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'pests',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'CropDamageObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'diseases',
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'CropDamageObject')
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'comments',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'areRoguesPresent',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}