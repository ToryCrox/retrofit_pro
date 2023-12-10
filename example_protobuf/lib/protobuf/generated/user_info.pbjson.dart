///
//  Generated code. Do not modify.
//  source: user_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userSexDescriptor instead')
const UserSex$json = const {
  '1': 'UserSex',
  '2': const [
    const {'1': 'unknown', '2': 0},
    const {'1': 'male', '2': 1},
    const {'1': 'female', '2': 2},
  ],
};

/// Descriptor for `UserSex`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userSexDescriptor = $convert.base64Decode('CgdVc2VyU2V4EgsKB3Vua25vd24QABIICgRtYWxlEAESCgoGZmVtYWxlEAI=');
@$core.Deprecated('Use userInfoRespDescriptor instead')
const UserInfoResp$json = const {
  '1': 'UserInfoResp',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 13, '10': 'code'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    const {'1': 'data', '3': 3, '4': 1, '5': 11, '6': '.pb.UserInfo', '10': 'data'},
  ],
};

/// Descriptor for `UserInfoResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoRespDescriptor = $convert.base64Decode('CgxVc2VySW5mb1Jlc3ASEgoEY29kZRgBIAEoDVIEY29kZRIQCgNtc2cYAiABKAlSA21zZxIgCgRkYXRhGAMgASgLMgwucGIuVXNlckluZm9SBGRhdGE=');
@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo$json = const {
  '1': 'UserInfo',
  '2': const [
    const {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.pb.UserBasic', '10': 'base'},
    const {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.pb.UserStatus', '10': 'status'},
    const {'1': 'gpsLocation', '3': 3, '4': 1, '5': 11, '6': '.pb.UserGpsLocation', '10': 'gpsLocation'},
  ],
};

/// Descriptor for `UserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoDescriptor = $convert.base64Decode('CghVc2VySW5mbxIhCgRiYXNlGAEgASgLMg0ucGIuVXNlckJhc2ljUgRiYXNlEiYKBnN0YXR1cxgCIAEoCzIOLnBiLlVzZXJTdGF0dXNSBnN0YXR1cxI1CgtncHNMb2NhdGlvbhgDIAEoCzITLnBiLlVzZXJHcHNMb2NhdGlvblILZ3BzTG9jYXRpb24=');
@$core.Deprecated('Use userBasicDescriptor instead')
const UserBasic$json = const {
  '1': 'UserBasic',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 13, '10': 'uid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'sex', '3': 5, '4': 1, '5': 14, '6': '.pb.UserSex', '10': 'sex'},
    const {'1': 'age', '3': 6, '4': 1, '5': 13, '10': 'age'},
    const {'1': 'phone', '3': 7, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'location', '3': 8, '4': 1, '5': 11, '6': '.pb.UserLocation', '10': 'location'},
    const {'1': 'tags', '3': 9, '4': 3, '5': 11, '6': '.pb.UserTag', '10': 'tags'},
    const {'1': 'introduction', '3': 10, '4': 1, '5': 9, '10': 'introduction'},
  ],
};

/// Descriptor for `UserBasic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBasicDescriptor = $convert.base64Decode('CglVc2VyQmFzaWMSEAoDdWlkGAEgASgNUgN1aWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIWCgZhdmF0YXIYAyABKAlSBmF2YXRhchIdCgNzZXgYBSABKA4yCy5wYi5Vc2VyU2V4UgNzZXgSEAoDYWdlGAYgASgNUgNhZ2USFAoFcGhvbmUYByABKAlSBXBob25lEiwKCGxvY2F0aW9uGAggASgLMhAucGIuVXNlckxvY2F0aW9uUghsb2NhdGlvbhIfCgR0YWdzGAkgAygLMgsucGIuVXNlclRhZ1IEdGFncxIiCgxpbnRyb2R1Y3Rpb24YCiABKAlSDGludHJvZHVjdGlvbg==');
@$core.Deprecated('Use userStatusDescriptor instead')
const UserStatus$json = const {
  '1': 'UserStatus',
  '2': const [
    const {'1': 'is_online', '3': 1, '4': 1, '5': 8, '10': 'isOnline'},
    const {'1': 'is_new', '3': 2, '4': 1, '5': 8, '10': 'isNew'},
    const {'1': 'is_follow', '3': 3, '4': 1, '5': 8, '10': 'isFollow'},
  ],
};

/// Descriptor for `UserStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userStatusDescriptor = $convert.base64Decode('CgpVc2VyU3RhdHVzEhsKCWlzX29ubGluZRgBIAEoCFIIaXNPbmxpbmUSFQoGaXNfbmV3GAIgASgIUgVpc05ldxIbCglpc19mb2xsb3cYAyABKAhSCGlzRm9sbG93');
@$core.Deprecated('Use userLocationDescriptor instead')
const UserLocation$json = const {
  '1': 'UserLocation',
  '2': const [
    const {'1': 'country', '3': 1, '4': 1, '5': 9, '10': 'country'},
    const {'1': 'province', '3': 2, '4': 1, '5': 9, '10': 'province'},
    const {'1': 'city', '3': 3, '4': 1, '5': 9, '10': 'city'},
  ],
};

/// Descriptor for `UserLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLocationDescriptor = $convert.base64Decode('CgxVc2VyTG9jYXRpb24SGAoHY291bnRyeRgBIAEoCVIHY291bnRyeRIaCghwcm92aW5jZRgCIAEoCVIIcHJvdmluY2USEgoEY2l0eRgDIAEoCVIEY2l0eQ==');
@$core.Deprecated('Use userTagDescriptor instead')
const UserTag$json = const {
  '1': 'UserTag',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'id', '3': 3, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `UserTag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userTagDescriptor = $convert.base64Decode('CgdVc2VyVGFnEhIKBG5hbWUYASABKAlSBG5hbWUSEgoEdHlwZRgCIAEoBVIEdHlwZRIOCgJpZBgDIAEoBVICaWQ=');
@$core.Deprecated('Use userGpsLocationDescriptor instead')
const UserGpsLocation$json = const {
  '1': 'UserGpsLocation',
  '2': const [
    const {'1': 'country', '3': 1, '4': 1, '5': 9, '10': 'country'},
    const {'1': 'province', '3': 2, '4': 1, '5': 9, '10': 'province'},
    const {'1': 'city', '3': 3, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'district', '3': 4, '4': 1, '5': 9, '10': 'district'},
    const {'1': 'street', '3': 5, '4': 1, '5': 9, '10': 'street'},
    const {'1': 'street_number', '3': 6, '4': 1, '5': 9, '10': 'streetNumber'},
    const {'1': 'address', '3': 7, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'latitude', '3': 8, '4': 1, '5': 1, '10': 'latitude'},
    const {'1': 'longitude', '3': 9, '4': 1, '5': 1, '10': 'longitude'},
  ],
};

/// Descriptor for `UserGpsLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userGpsLocationDescriptor = $convert.base64Decode('Cg9Vc2VyR3BzTG9jYXRpb24SGAoHY291bnRyeRgBIAEoCVIHY291bnRyeRIaCghwcm92aW5jZRgCIAEoCVIIcHJvdmluY2USEgoEY2l0eRgDIAEoCVIEY2l0eRIaCghkaXN0cmljdBgEIAEoCVIIZGlzdHJpY3QSFgoGc3RyZWV0GAUgASgJUgZzdHJlZXQSIwoNc3RyZWV0X251bWJlchgGIAEoCVIMc3RyZWV0TnVtYmVyEhgKB2FkZHJlc3MYByABKAlSB2FkZHJlc3MSGgoIbGF0aXR1ZGUYCCABKAFSCGxhdGl0dWRlEhwKCWxvbmdpdHVkZRgJIAEoAVIJbG9uZ2l0dWRl');
