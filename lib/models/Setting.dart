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

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Setting type in your schema. */
class Setting extends amplify_core.Model {
  static const classType = const _SettingModelType();
  final String id;
  final String? _owner;
  final String? _deviceToken;
  final List<String>? _deviceTokens;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  SettingModelIdentifier get modelIdentifier {
      return SettingModelIdentifier(
        id: id
      );
  }
  
  String? get owner {
    return _owner;
  }
  
  String? get deviceToken {
    return _deviceToken;
  }
  
  List<String>? get deviceTokens {
    return _deviceTokens;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Setting._internal({required this.id, owner, deviceToken, deviceTokens, createdAt, updatedAt}): _owner = owner, _deviceToken = deviceToken, _deviceTokens = deviceTokens, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Setting({String? id, String? owner, String? deviceToken, List<String>? deviceTokens}) {
    return Setting._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      owner: owner,
      deviceToken: deviceToken,
      deviceTokens: deviceTokens != null ? List<String>.unmodifiable(deviceTokens) : deviceTokens);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Setting &&
      id == other.id &&
      _owner == other._owner &&
      _deviceToken == other._deviceToken &&
      DeepCollectionEquality().equals(_deviceTokens, other._deviceTokens);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Setting {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("owner=" + "$_owner" + ", ");
    buffer.write("deviceToken=" + "$_deviceToken" + ", ");
    buffer.write("deviceTokens=" + (_deviceTokens != null ? _deviceTokens!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Setting copyWith({String? owner, String? deviceToken, List<String>? deviceTokens}) {
    return Setting._internal(
      id: id,
      owner: owner ?? this.owner,
      deviceToken: deviceToken ?? this.deviceToken,
      deviceTokens: deviceTokens ?? this.deviceTokens);
  }
  
  Setting copyWithModelFieldValues({
    ModelFieldValue<String?>? owner,
    ModelFieldValue<String?>? deviceToken,
    ModelFieldValue<List<String>?>? deviceTokens
  }) {
    return Setting._internal(
      id: id,
      owner: owner == null ? this.owner : owner.value,
      deviceToken: deviceToken == null ? this.deviceToken : deviceToken.value,
      deviceTokens: deviceTokens == null ? this.deviceTokens : deviceTokens.value
    );
  }
  
  Setting.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _owner = json['owner'],
      _deviceToken = json['deviceToken'],
      _deviceTokens = json['deviceTokens']?.cast<String>(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'owner': _owner, 'deviceToken': _deviceToken, 'deviceTokens': _deviceTokens, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'owner': _owner,
    'deviceToken': _deviceToken,
    'deviceTokens': _deviceTokens,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<SettingModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<SettingModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final OWNER = amplify_core.QueryField(fieldName: "owner");
  static final DEVICETOKEN = amplify_core.QueryField(fieldName: "deviceToken");
  static final DEVICETOKENS = amplify_core.QueryField(fieldName: "deviceTokens");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Setting";
    modelSchemaDefinition.pluralName = "Settings";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.GET,
          amplify_core.ModelOperation.LIST
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["id"], name: null),
      amplify_core.ModelIndex(fields: const ["owner"], name: "settingsByOwner")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Setting.OWNER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Setting.DEVICETOKEN,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Setting.DEVICETOKENS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _SettingModelType extends amplify_core.ModelType<Setting> {
  const _SettingModelType();
  
  @override
  Setting fromJson(Map<String, dynamic> jsonData) {
    return Setting.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Setting';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Setting] in your schema.
 */
class SettingModelIdentifier implements amplify_core.ModelIdentifier<Setting> {
  final String id;

  /** Create an instance of SettingModelIdentifier using [id] the primary key. */
  const SettingModelIdentifier({
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
  String toString() => 'SettingModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is SettingModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}