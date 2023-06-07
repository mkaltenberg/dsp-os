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
import 'AppUserProfile.dart';
import 'CropDamageOption.dart';
import 'FemaleInbred.dart';
import 'FieldChild.dart';
import 'FieldParent.dart';
import 'Grower.dart';
import 'Hybrid.dart';
import 'InspectionChild.dart';
import 'InspectionParent.dart';
import 'InspectionType.dart';
import 'MaleInbred.dart';
import 'Season.dart';
import 'SplitPlantingType.dart';
import 'AddressObject.dart';
import 'ContactObject.dart';
import 'CropDamageObject.dart';
import 'DetasselingSeedCornStandardInspectionFormDataObject.dart';
import 'FieldAcresObject.dart';
import 'FieldMarkerObject.dart';
import 'GeoPointObject.dart';
import 'GrowerShareObject.dart';
import 'InspectionConfigurationObject.dart';
import 'LeafToTasselSeedCornStandardInspectionFormDataObject.dart';
import 'PlantingDateObject.dart';
import 'PlantingDescriptionObject.dart';
import 'PlssLocationObject.dart';
import 'PopulationsStandardSeedCornInspectionFormDataObject.dart';
import 'ScoutingStandardSeedCornInspectionFormDataObject.dart';
import 'SplitPlantingObject.dart';

export 'AddressObject.dart';
export 'AppUserProfile.dart';
export 'CompletionStatusKey.dart';
export 'ContactObject.dart';
export 'CornGrowthStageKey.dart';
export 'CountryKey.dart';
export 'CropDamageCategoryKey.dart';
export 'CropDamageObject.dart';
export 'CropDamageOption.dart';
export 'CropDamageSeverityKey.dart';
export 'CropTypeKey.dart';
export 'DetasselingSeedCornStandardInspectionFormDataObject.dart';
export 'FemaleInbred.dart';
export 'FieldAcresObject.dart';
export 'FieldChild.dart';
export 'FieldInspectionModuleKey.dart';
export 'FieldMarkerObject.dart';
export 'FieldParent.dart';
export 'GeoPointObject.dart';
export 'Grower.dart';
export 'GrowerShareObject.dart';
export 'Hybrid.dart';
export 'InspectionChild.dart';
export 'InspectionConfigurationObject.dart';
export 'InspectionFormTypeKey.dart';
export 'InspectionParent.dart';
export 'InspectionStatusKey.dart';
export 'InspectionType.dart';
export 'LeafToTasselSeedCornStandardInspectionFormDataObject.dart';
export 'MaleInbred.dart';
export 'PlantingDateObject.dart';
export 'PlantingDescriptionObject.dart';
export 'PlssLocationObject.dart';
export 'PopulationsStandardSeedCornInspectionFormDataObject.dart';
export 'ScoutingStandardSeedCornInspectionFormDataObject.dart';
export 'Season.dart';
export 'SplitPlantingObject.dart';
export 'SplitPlantingType.dart';
export 'UsStateKey.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "d0e2fb1f118e09907c27a4ed89ae154d";
  @override
  List<ModelSchema> modelSchemas = [AppUserProfile.schema, CropDamageOption.schema, FemaleInbred.schema, FieldChild.schema, FieldParent.schema, Grower.schema, Hybrid.schema, InspectionChild.schema, InspectionParent.schema, InspectionType.schema, MaleInbred.schema, Season.schema, SplitPlantingType.schema];
  static final ModelProvider _instance = ModelProvider();
  @override
  List<ModelSchema> customTypeSchemas = [AddressObject.schema, ContactObject.schema, CropDamageObject.schema, DetasselingSeedCornStandardInspectionFormDataObject.schema, FieldAcresObject.schema, FieldMarkerObject.schema, GeoPointObject.schema, GrowerShareObject.schema, InspectionConfigurationObject.schema, LeafToTasselSeedCornStandardInspectionFormDataObject.schema, PlantingDateObject.schema, PlantingDescriptionObject.schema, PlssLocationObject.schema, PopulationsStandardSeedCornInspectionFormDataObject.schema, ScoutingStandardSeedCornInspectionFormDataObject.schema, SplitPlantingObject.schema];

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "AppUserProfile":
        return AppUserProfile.classType;
      case "CropDamageOption":
        return CropDamageOption.classType;
      case "FemaleInbred":
        return FemaleInbred.classType;
      case "FieldChild":
        return FieldChild.classType;
      case "FieldParent":
        return FieldParent.classType;
      case "Grower":
        return Grower.classType;
      case "Hybrid":
        return Hybrid.classType;
      case "InspectionChild":
        return InspectionChild.classType;
      case "InspectionParent":
        return InspectionParent.classType;
      case "InspectionType":
        return InspectionType.classType;
      case "MaleInbred":
        return MaleInbred.classType;
      case "Season":
        return Season.classType;
      case "SplitPlantingType":
        return SplitPlantingType.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}