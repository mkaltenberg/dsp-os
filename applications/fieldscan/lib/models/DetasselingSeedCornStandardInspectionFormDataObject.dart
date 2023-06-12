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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the DetasselingSeedCornStandardInspectionFormDataObject type in your schema. */
@immutable
class DetasselingSeedCornStandardInspectionFormDataObject {
  final String? _comments;
  final bool? _areRoguesPresent;
  final int? _femaleReceptiveSilk;
  final int? _femaleTasselsExposed;
  final int? _femaleTasselsRemaining;
  final int? _femaleTasselsShedding;
  final int? _maleTasselsShedding;

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
  
  int get femaleReceptiveSilk {
    try {
      return _femaleReceptiveSilk!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get femaleTasselsExposed {
    try {
      return _femaleTasselsExposed!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get femaleTasselsRemaining {
    try {
      return _femaleTasselsRemaining!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get femaleTasselsShedding {
    try {
      return _femaleTasselsShedding!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get maleTasselsShedding {
    try {
      return _maleTasselsShedding!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const DetasselingSeedCornStandardInspectionFormDataObject._internal({comments, required areRoguesPresent, required femaleReceptiveSilk, required femaleTasselsExposed, required femaleTasselsRemaining, required femaleTasselsShedding, required maleTasselsShedding}): _comments = comments, _areRoguesPresent = areRoguesPresent, _femaleReceptiveSilk = femaleReceptiveSilk, _femaleTasselsExposed = femaleTasselsExposed, _femaleTasselsRemaining = femaleTasselsRemaining, _femaleTasselsShedding = femaleTasselsShedding, _maleTasselsShedding = maleTasselsShedding;
  
  factory DetasselingSeedCornStandardInspectionFormDataObject({String? comments, required bool areRoguesPresent, required int femaleReceptiveSilk, required int femaleTasselsExposed, required int femaleTasselsRemaining, required int femaleTasselsShedding, required int maleTasselsShedding}) {
    return DetasselingSeedCornStandardInspectionFormDataObject._internal(
      comments: comments,
      areRoguesPresent: areRoguesPresent,
      femaleReceptiveSilk: femaleReceptiveSilk,
      femaleTasselsExposed: femaleTasselsExposed,
      femaleTasselsRemaining: femaleTasselsRemaining,
      femaleTasselsShedding: femaleTasselsShedding,
      maleTasselsShedding: maleTasselsShedding);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetasselingSeedCornStandardInspectionFormDataObject &&
      _comments == other._comments &&
      _areRoguesPresent == other._areRoguesPresent &&
      _femaleReceptiveSilk == other._femaleReceptiveSilk &&
      _femaleTasselsExposed == other._femaleTasselsExposed &&
      _femaleTasselsRemaining == other._femaleTasselsRemaining &&
      _femaleTasselsShedding == other._femaleTasselsShedding &&
      _maleTasselsShedding == other._maleTasselsShedding;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("DetasselingSeedCornStandardInspectionFormDataObject {");
    buffer.write("comments=" + "$_comments" + ", ");
    buffer.write("areRoguesPresent=" + (_areRoguesPresent != null ? _areRoguesPresent!.toString() : "null") + ", ");
    buffer.write("femaleReceptiveSilk=" + (_femaleReceptiveSilk != null ? _femaleReceptiveSilk!.toString() : "null") + ", ");
    buffer.write("femaleTasselsExposed=" + (_femaleTasselsExposed != null ? _femaleTasselsExposed!.toString() : "null") + ", ");
    buffer.write("femaleTasselsRemaining=" + (_femaleTasselsRemaining != null ? _femaleTasselsRemaining!.toString() : "null") + ", ");
    buffer.write("femaleTasselsShedding=" + (_femaleTasselsShedding != null ? _femaleTasselsShedding!.toString() : "null") + ", ");
    buffer.write("maleTasselsShedding=" + (_maleTasselsShedding != null ? _maleTasselsShedding!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  DetasselingSeedCornStandardInspectionFormDataObject copyWith({String? comments, bool? areRoguesPresent, int? femaleReceptiveSilk, int? femaleTasselsExposed, int? femaleTasselsRemaining, int? femaleTasselsShedding, int? maleTasselsShedding}) {
    return DetasselingSeedCornStandardInspectionFormDataObject._internal(
      comments: comments ?? this.comments,
      areRoguesPresent: areRoguesPresent ?? this.areRoguesPresent,
      femaleReceptiveSilk: femaleReceptiveSilk ?? this.femaleReceptiveSilk,
      femaleTasselsExposed: femaleTasselsExposed ?? this.femaleTasselsExposed,
      femaleTasselsRemaining: femaleTasselsRemaining ?? this.femaleTasselsRemaining,
      femaleTasselsShedding: femaleTasselsShedding ?? this.femaleTasselsShedding,
      maleTasselsShedding: maleTasselsShedding ?? this.maleTasselsShedding);
  }
  
  DetasselingSeedCornStandardInspectionFormDataObject.fromJson(Map<String, dynamic> json)  
    : _comments = json['comments'],
      _areRoguesPresent = json['areRoguesPresent'],
      _femaleReceptiveSilk = (json['femaleReceptiveSilk'] as num?)?.toInt(),
      _femaleTasselsExposed = (json['femaleTasselsExposed'] as num?)?.toInt(),
      _femaleTasselsRemaining = (json['femaleTasselsRemaining'] as num?)?.toInt(),
      _femaleTasselsShedding = (json['femaleTasselsShedding'] as num?)?.toInt(),
      _maleTasselsShedding = (json['maleTasselsShedding'] as num?)?.toInt();
  
  Map<String, dynamic> toJson() => {
    'comments': _comments, 'areRoguesPresent': _areRoguesPresent, 'femaleReceptiveSilk': _femaleReceptiveSilk, 'femaleTasselsExposed': _femaleTasselsExposed, 'femaleTasselsRemaining': _femaleTasselsRemaining, 'femaleTasselsShedding': _femaleTasselsShedding, 'maleTasselsShedding': _maleTasselsShedding
  };
  
  Map<String, Object?> toMap() => {
    'comments': _comments, 'areRoguesPresent': _areRoguesPresent, 'femaleReceptiveSilk': _femaleReceptiveSilk, 'femaleTasselsExposed': _femaleTasselsExposed, 'femaleTasselsRemaining': _femaleTasselsRemaining, 'femaleTasselsShedding': _femaleTasselsShedding, 'maleTasselsShedding': _maleTasselsShedding
  };

  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DetasselingSeedCornStandardInspectionFormDataObject";
    modelSchemaDefinition.pluralName = "DetasselingSeedCornStandardInspectionFormDataObjects";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'femaleReceptiveSilk',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'femaleTasselsExposed',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'femaleTasselsRemaining',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'femaleTasselsShedding',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.customTypeField(
      fieldName: 'maleTasselsShedding',
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
  });
}