//
//  Generated code. Do not modify.
//  source: user_info.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserSex extends $pb.ProtobufEnum {
  static const UserSex unknown = UserSex._(0, _omitEnumNames ? '' : 'unknown');
  static const UserSex male = UserSex._(1, _omitEnumNames ? '' : 'male');
  static const UserSex female = UserSex._(2, _omitEnumNames ? '' : 'female');

  static const $core.List<UserSex> values = <UserSex> [
    unknown,
    male,
    female,
  ];

  static final $core.Map<$core.int, UserSex> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserSex? valueOf($core.int value) => _byValue[value];

  const UserSex._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
