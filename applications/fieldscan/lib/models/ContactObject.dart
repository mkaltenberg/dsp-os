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


/** This is an auto generated class representing the ContactObject type in your schema. */
@immutable
class ContactObject {
  final String? _firstName;
  final String? _lastName;
  final String? _officePhone;
  final String? _mobilePhone;
  final String? _jobTitle;
  final AddressObject? _mailingAddress;

  String get firstName {
    try {
      return _firstName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get lastName {
    try {
      return _lastName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get officePhone {
    return _officePhone;
  }
  
  String? get mobilePhone {
    return _mobilePhone;
  }
  
  String get jobTitle {
    try {
      return _jobTitle!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  AddressObject? get mailingAddress {
    return _mailingAddress;
  }
  
  const ContactObject._internal({required firstName, required lastName, officePhone, mobilePhone, required jobTitle, mailingAddress}): _firstName = firstName, _lastName = lastName, _officePhone = officePhone, _mobilePhone = mobilePhone, _jobTitle = jobTitle, _mailingAddress = mailingAddress;
  
  factory ContactObject({required String firstName, required String lastName, String? officePhone, String? mobilePhone, required String jobTitle, AddressObject? mailingAddress}) {
    return ContactObject._internal(
      firstName: firstName,
      lastName: lastName,
      officePhone: officePhone,
      mobilePhone: mobilePhone,
      jobTitle: jobTitle,
      mailingAddress: mailingAddress);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactObject &&
      _firstName == other._firstName &&
      _lastName == other._lastName &&
      _officePhone == other._officePhone &&
      _mobilePhone == other._mobilePhone &&
      _jobTitle == other._jobTitle &&
      _mailingAddress == other._mailingAddress;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ContactObject {");
    buffer.write("firstName=" + "$_firstName" + ", ");
    buffer.write("lastName=" + "$_lastName" + ", ");
    buffer.write("officePhone=" + "$_officePhone" + ", ");
    buffer.write("mobilePhone=" + "$_mobilePhone" + ", ");
    buffer.write("jobTitle=" + "$_jobTitle" + ", ");
    buffer.write("mailingAddress=" + (_mailingAddress != null ? _mailingAddress!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ContactObject copyWith({String? firstName, String? lastName, String? officePhone, String? mobilePhone, String? jobTitle, AddressObject? mailingAddress}) {
    return ContactObject._internal(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      officePhone: officePhone ?? this.officePhone,
      mobilePhone: mobilePhone ?? this.mobilePhone,
      jobTitle: jobTitle ?? this.jobTitle,
      mailingAddress: mailingAddress ?? this.mailingAddress);
  }
  
  ContactObject.fromJson(Map<String, dynamic> json)  
    : _firstName = json['firstName'],
      _lastName = json['lastName'],
      _officePhone = json['officePhone'],
      _mobilePhone = json['mobilePhone'],
      _jobTitle = json['jobTitle'],
      _mailingAddress = json['mailingAddress']?['serializedData'] != null
        ? AddressObject.fromJson(new Map<String, dynamic>.from(json['mailingAddress']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'firstName': _firstName, 'lastName': _lastName, 'officePhone': _officePhone, 'mobilePhone': _mobilePhone, 'jobTitle': _jobTitle, 'mailingAddress': _mailingAddress?.toJson()
  };
  
  Map<String, Object?> toMap() => {
    'firstName': _firstName, 'lastName': _lastName, 'officePhone': _officePhone, 'mobilePhone': _mobilePhone, 'jobTitle': _jobTitle, 'mailingAddress': _mailingAddress
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ContactObject";
    modelSchemaDefinition.pluralName = "ContactObjects";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'firstName',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'lastName',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'officePhone',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'mobilePhone',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'jobTitle',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.embedded(
      fieldName: 'mailingAddress',
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.embedded, ofCustomTypeName: 'AddressObject')
    ));
  });
}