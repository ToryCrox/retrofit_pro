///
//  Generated code. Do not modify.
//  source: user_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class UserSex extends $pb.ProtobufEnum {
  static const UserSex unknown = UserSex._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'unknown');
  static const UserSex male = UserSex._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'male');
  static const UserSex female = UserSex._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'female');

  static const $core.List<UserSex> values = <UserSex> [
    unknown,
    male,
    female,
  ];

  static final $core.Map<$core.int, UserSex> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserSex? valueOf($core.int value) => _byValue[value];

  const UserSex._($core.int v, $core.String n) : super(v, n);
}

