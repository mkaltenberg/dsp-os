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


/** This is an auto generated class representing the AddressObject type in your schema. */
@immutable
class AddressObject {
  final String? _streetLineOne;
  final String? _streetLineTwo;
  final String? _streetLineThree;
  final String? _city;
  final UsStateKey? _state;
  final CountryKey? _country;
  final String? _zipCode;
  final String? _label;

  String get streetLineOne {
    try {
      return _streetLineOne!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get streetLineTwo {
    return _streetLineTwo;
  }
  
  String? get streetLineThree {
    return _streetLineThree;
  }
  
  String get city {
    try {
      return _city!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  UsStateKey get state {
    try {
      return _state!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  CountryKey get country {
    try {
      return _country!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get zipCode {
    try {
      return _zipCode!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get label {
    return _label;
  }
  
  const AddressObject._internal({required streetLineOne, streetLineTwo, streetLineThree, required city, required state, required country, required zipCode, label}): _streetLineOne = streetLineOne, _streetLineTwo = streetLineTwo, _streetLineThree = streetLineThree, _city = city, _state = state, _country = country, _zipCode = zipCode, _label = label;
  
  factory AddressObject({required String streetLineOne, String? streetLineTwo, String? streetLineThree, required String city, required UsStateKey state, required CountryKey country, required String zipCode, String? label}) {
    return AddressObject._internal(
      streetLineOne: streetLineOne,
      streetLineTwo: streetLineTwo,
      streetLineThree: streetLineThree,
      city: city,
      state: state,
      country: country,
      zipCode: zipCode,
      label: label);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressObject &&
      _streetLineOne == other._streetLineOne &&
      _streetLineTwo == other._streetLineTwo &&
      _streetLineThree == other._streetLineThree &&
      _city == other._city &&
      _state == other._state &&
      _country == other._country &&
      _zipCode == other._zipCode &&
      _label == other._label;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("AddressObject {");
    buffer.write("streetLineOne=" + "$_streetLineOne" + ", ");
    buffer.write("streetLineTwo=" + "$_streetLineTwo" + ", ");
    buffer.write("streetLineThree=" + "$_streetLineThree" + ", ");
    buffer.write("city=" + "$_city" + ", ");
    buffer.write("state=" + (_state != null ? enumToString(_state)! : "null") + ", ");
    buffer.write("country=" + (_country != null ? enumToString(_country)! : "null") + ", ");
    buffer.write("zipCode=" + "$_zipCode" + ", ");
    buffer.write("label=" + "$_label");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  AddressObject copyWith({String? streetLineOne, String? streetLineTwo, String? streetLineThree, String? city, UsStateKey? state, CountryKey? country, String? zipCode, String? label}) {
    return AddressObject._internal(
      streetLineOne: streetLineOne ?? this.streetLineOne,
      streetLineTwo: streetLineTwo ?? this.streetLineTwo,
      streetLineThree: streetLineThree ?? this.streetLineThree,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      zipCode: zipCode ?? this.zipCode,
      label: label ?? this.label);
  }
  
  AddressObject.fromJson(Map<String, dynamic> json)  
    : _streetLineOne = json['streetLineOne'],
      _streetLineTwo = json['streetLineTwo'],
      _streetLineThree = json['streetLineThree'],
      _city = json['city'],
      _state = enumFromString<UsStateKey>(json['state'], UsStateKey.values),
      _country = enumFromString<CountryKey>(json['country'], CountryKey.values),
      _zipCode = json['zipCode'],
      _label = json['label'];
  
  Map<String, dynamic> toJson() => {
    'streetLineOne': _streetLineOne, 'streetLineTwo': _streetLineTwo, 'streetLineThree': _streetLineThree, 'city': _city, 'state': enumToString(_state), 'country': enumToString(_country), 'zipCode': _zipCode, 'label': _label
  };
  
  Map<String, Object?> toMap() => {
    'streetLineOne': _streetLineOne, 'streetLineTwo': _streetLineTwo, 'streetLineThree': _streetLineThree, 'city': _city, 'state': _state, 'country': _country, 'zipCode': _zipCode, 'label': _label
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "AddressObject";
    modelSchemaDefinition.pluralName = "AddressObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'streetLineOne',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'streetLineTwo',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'streetLineThree',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'city',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'state',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'country',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'zipCode',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'label',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}