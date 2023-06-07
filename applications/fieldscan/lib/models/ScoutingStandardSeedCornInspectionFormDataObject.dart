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
  final bool? _hasRogues;
  final bool? _isWatering;
  final List<CropDamageObject>? _weeds;
  final List<CropDamageObject>? _insects;
  final List<CropDamageObject>? _pests;
  final List<CropDamageObject>? _diseases;

  CornGrowthStageKey? get femaleGrowthStage {
    return _femaleGrowthStage;
  }
  
  CornGrowthStageKey? get maleGrowthStageOne {
    return _maleGrowthStageOne;
  }
  
  CornGrowthStageKey? get maleGrowthStageTwo {
    return _maleGrowthStageTwo;
  }
  
  bool? get hasRogues {
    return _hasRogues;
  }
  
  bool? get isWatering {
    return _isWatering;
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
  
  const ScoutingStandardSeedCornInspectionFormDataObject._internal({femaleGrowthStage, maleGrowthStageOne, maleGrowthStageTwo, hasRogues, isWatering, weeds, insects, pests, diseases}): _femaleGrowthStage = femaleGrowthStage, _maleGrowthStageOne = maleGrowthStageOne, _maleGrowthStageTwo = maleGrowthStageTwo, _hasRogues = hasRogues, _isWatering = isWatering, _weeds = weeds, _insects = insects, _pests = pests, _diseases = diseases;
  
  factory ScoutingStandardSeedCornInspectionFormDataObject({CornGrowthStageKey? femaleGrowthStage, CornGrowthStageKey? maleGrowthStageOne, CornGrowthStageKey? maleGrowthStageTwo, bool? hasRogues, bool? isWatering, List<CropDamageObject>? weeds, List<CropDamageObject>? insects, List<CropDamageObject>? pests, List<CropDamageObject>? diseases}) {
    return ScoutingStandardSeedCornInspectionFormDataObject._internal(
      femaleGrowthStage: femaleGrowthStage,
      maleGrowthStageOne: maleGrowthStageOne,
      maleGrowthStageTwo: maleGrowthStageTwo,
      hasRogues: hasRogues,
      isWatering: isWatering,
      weeds: weeds != null ? List<CropDamageObject>.unmodifiable(weeds) : weeds,
      insects: insects != null ? List<CropDamageObject>.unmodifiable(insects) : insects,
      pests: pests != null ? List<CropDamageObject>.unmodifiable(pests) : pests,
      diseases: diseases != null ? List<CropDamageObject>.unmodifiable(diseases) : diseases);
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
      _hasRogues == other._hasRogues &&
      _isWatering == other._isWatering &&
      DeepCollectionEquality().equals(_weeds, other._weeds) &&
      DeepCollectionEquality().equals(_insects, other._insects) &&
      DeepCollectionEquality().equals(_pests, other._pests) &&
      DeepCollectionEquality().equals(_diseases, other._diseases);
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
    buffer.write("hasRogues=" + (_hasRogues != null ? _hasRogues!.toString() : "null") + ", ");
    buffer.write("isWatering=" + (_isWatering != null ? _isWatering!.toString() : "null") + ", ");
    buffer.write("weeds=" + (_weeds != null ? _weeds!.toString() : "null") + ", ");
    buffer.write("insects=" + (_insects != null ? _insects!.toString() : "null") + ", ");
    buffer.write("pests=" + (_pests != null ? _pests!.toString() : "null") + ", ");
    buffer.write("diseases=" + (_diseases != null ? _diseases!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ScoutingStandardSeedCornInspectionFormDataObject copyWith({CornGrowthStageKey? femaleGrowthStage, CornGrowthStageKey? maleGrowthStageOne, CornGrowthStageKey? maleGrowthStageTwo, bool? hasRogues, bool? isWatering, List<CropDamageObject>? weeds, List<CropDamageObject>? insects, List<CropDamageObject>? pests, List<CropDamageObject>? diseases}) {
    return ScoutingStandardSeedCornInspectionFormDataObject._internal(
      femaleGrowthStage: femaleGrowthStage ?? this.femaleGrowthStage,
      maleGrowthStageOne: maleGrowthStageOne ?? this.maleGrowthStageOne,
      maleGrowthStageTwo: maleGrowthStageTwo ?? this.maleGrowthStageTwo,
      hasRogues: hasRogues ?? this.hasRogues,
      isWatering: isWatering ?? this.isWatering,
      weeds: weeds ?? this.weeds,
      insects: insects ?? this.insects,
      pests: pests ?? this.pests,
      diseases: diseases ?? this.diseases);
  }
  
  ScoutingStandardSeedCornInspectionFormDataObject.fromJson(Map<String, dynamic> json)  
    : _femaleGrowthStage = enumFromString<CornGrowthStageKey>(json['femaleGrowthStage'], CornGrowthStageKey.values),
      _maleGrowthStageOne = enumFromString<CornGrowthStageKey>(json['maleGrowthStageOne'], CornGrowthStageKey.values),
      _maleGrowthStageTwo = enumFromString<CornGrowthStageKey>(json['maleGrowthStageTwo'], CornGrowthStageKey.values),
      _hasRogues = json['hasRogues'],
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
        : null;
  
  Map<String, dynamic> toJson() => {
    'femaleGrowthStage': enumToString(_femaleGrowthStage), 'maleGrowthStageOne': enumToString(_maleGrowthStageOne), 'maleGrowthStageTwo': enumToString(_maleGrowthStageTwo), 'hasRogues': _hasRogues, 'isWatering': _isWatering, 'weeds': _weeds?.map((CropDamageObject? e) => e?.toJson()).toList(), 'insects': _insects?.map((CropDamageObject? e) => e?.toJson()).toList(), 'pests': _pests?.map((CropDamageObject? e) => e?.toJson()).toList(), 'diseases': _diseases?.map((CropDamageObject? e) => e?.toJson()).toList()
  };
  
  Map<String, Object?> toMap() => {
    'femaleGrowthStage': _femaleGrowthStage, 'maleGrowthStageOne': _maleGrowthStageOne, 'maleGrowthStageTwo': _maleGrowthStageTwo, 'hasRogues': _hasRogues, 'isWatering': _isWatering, 'weeds': _weeds, 'insects': _insects, 'pests': _pests, 'diseases': _diseases
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ScoutingStandardSeedCornInspectionFormDataObject";
    modelSchemaDefinition.pluralName = "ScoutingStandardSeedCornInspectionFormDataObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'femaleGrowthStage',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'maleGrowthStageOne',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'maleGrowthStageTwo',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'hasRogues',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'isWatering',
      isRequired: false,
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
  });
}