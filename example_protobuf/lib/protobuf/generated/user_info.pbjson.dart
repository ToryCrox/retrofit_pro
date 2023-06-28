//
//  Generated code. Do not modify.
//  source: user_info.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userSexDescriptor instead')
const UserSex$json = {
  '1': 'UserSex',
  '2': [
    {'1': 'unknown', '2': 0},
    {'1': 'male', '2': 1},
    {'1': 'female', '2': 2},
  ],
};

/// Descriptor for `UserSex`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userSexDescriptor = $convert.base64Decode(
    'CgdVc2VyU2V4EgsKB3Vua25vd24QABIICgRtYWxlEAESCgoGZmVtYWxlEAI=');

@$core.Deprecated('Use userInfoRespDescriptor instead')
const UserInfoResp$json = {
  '1': 'UserInfoResp',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 13, '10': 'code'},
    {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    {'1': 'data', '3': 3, '4': 1, '5': 11, '6': '.pb.UserInfo', '10': 'data'},
  ],
};

/// Descriptor for `UserInfoResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoRespDescriptor = $convert.base64Decode(
    'CgxVc2VySW5mb1Jlc3ASEgoEY29kZRgBIAEoDVIEY29kZRIQCgNtc2cYAiABKAlSA21zZxIgCg'
    'RkYXRhGAMgASgLMgwucGIuVXNlckluZm9SBGRhdGE=');

@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo$json = {
  '1': 'UserInfo',
  '2': [
    {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.pb.UserBasic', '10': 'base'},
    {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.pb.UserStatus', '10': 'status'},
    {'1': 'gpsLocation', '3': 3, '4': 1, '5': 11, '6': '.pb.UserGpsLocation', '10': 'gpsLocation'},
  ],
};

/// Descriptor for `UserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoDescriptor = $convert.base64Decode(
    'CghVc2VySW5mbxIhCgRiYXNlGAEgASgLMg0ucGIuVXNlckJhc2ljUgRiYXNlEiYKBnN0YXR1cx'
    'gCIAEoCzIOLnBiLlVzZXJTdGF0dXNSBnN0YXR1cxI1CgtncHNMb2NhdGlvbhgDIAEoCzITLnBi'
    'LlVzZXJHcHNMb2NhdGlvblILZ3BzTG9jYXRpb24=');

@$core.Deprecated('Use userBasicDescriptor instead')
const UserBasic$json = {
  '1': 'UserBasic',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 13, '10': 'uid'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'sex', '3': 5, '4': 1, '5': 14, '6': '.pb.UserSex', '10': 'sex'},
    {'1': 'age', '3': 6, '4': 1, '5': 13, '10': 'age'},
    {'1': 'phone', '3': 7, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'location', '3': 8, '4': 1, '5': 11, '6': '.pb.UserLocation', '10': 'location'},
    {'1': 'tags', '3': 9, '4': 3, '5': 11, '6': '.pb.UserTag', '10': 'tags'},
    {'1': 'introduction', '3': 10, '4': 1, '5': 9, '10': 'introduction'},
  ],
};

/// Descriptor for `UserBasic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBasicDescriptor = $convert.base64Decode(
    'CglVc2VyQmFzaWMSEAoDdWlkGAEgASgNUgN1aWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIWCgZhdm'
    'F0YXIYAyABKAlSBmF2YXRhchIdCgNzZXgYBSABKA4yCy5wYi5Vc2VyU2V4UgNzZXgSEAoDYWdl'
    'GAYgASgNUgNhZ2USFAoFcGhvbmUYByABKAlSBXBob25lEiwKCGxvY2F0aW9uGAggASgLMhAucG'
    'IuVXNlckxvY2F0aW9uUghsb2NhdGlvbhIfCgR0YWdzGAkgAygLMgsucGIuVXNlclRhZ1IEdGFn'
    'cxIiCgxpbnRyb2R1Y3Rpb24YCiABKAlSDGludHJvZHVjdGlvbg==');

@$core.Deprecated('Use userStatusDescriptor instead')
const UserStatus$json = {
  '1': 'UserStatus',
  '2': [
    {'1': 'is_online', '3': 1, '4': 1, '5': 8, '10': 'isOnline'},
    {'1': 'is_new', '3': 2, '4': 1, '5': 8, '10': 'isNew'},
    {'1': 'is_follow', '3': 3, '4': 1, '5': 8, '10': 'isFollow'},
  ],
};

/// Descriptor for `UserStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userStatusDescriptor = $convert.base64Decode(
    'CgpVc2VyU3RhdHVzEhsKCWlzX29ubGluZRgBIAEoCFIIaXNPbmxpbmUSFQoGaXNfbmV3GAIgAS'
    'gIUgVpc05ldxIbCglpc19mb2xsb3cYAyABKAhSCGlzRm9sbG93');

@$core.Deprecated('Use userLocationDescriptor instead')
const UserLocation$json = {
  '1': 'UserLocation',
  '2': [
    {'1': 'country', '3': 1, '4': 1, '5': 9, '10': 'country'},
    {'1': 'province', '3': 2, '4': 1, '5': 9, '10': 'province'},
    {'1': 'city', '3': 3, '4': 1, '5': 9, '10': 'city'},
  ],
};

/// Descriptor for `UserLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLocationDescriptor = $convert.base64Decode(
    'CgxVc2VyTG9jYXRpb24SGAoHY291bnRyeRgBIAEoCVIHY291bnRyeRIaCghwcm92aW5jZRgCIA'
    'EoCVIIcHJvdmluY2USEgoEY2l0eRgDIAEoCVIEY2l0eQ==');

@$core.Deprecated('Use userTagDescriptor instead')
const UserTag$json = {
  '1': 'UserTag',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    {'1': 'id', '3': 3, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `UserTag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userTagDescriptor = $convert.base64Decode(
    'CgdVc2VyVGFnEhIKBG5hbWUYASABKAlSBG5hbWUSEgoEdHlwZRgCIAEoBVIEdHlwZRIOCgJpZB'
    'gDIAEoBVICaWQ=');

@$core.Deprecated('Use userGpsLocationDescriptor instead')
const UserGpsLocation$json = {
  '1': 'UserGpsLocation',
  '2': [
    {'1': 'country', '3': 1, '4': 1, '5': 9, '10': 'country'},
    {'1': 'province', '3': 2, '4': 1, '5': 9, '10': 'province'},
    {'1': 'city', '3': 3, '4': 1, '5': 9, '10': 'city'},
    {'1': 'district', '3': 4, '4': 1, '5': 9, '10': 'district'},
    {'1': 'street', '3': 5, '4': 1, '5': 9, '10': 'street'},
    {'1': 'street_number', '3': 6, '4': 1, '5': 9, '10': 'streetNumber'},
    {'1': 'address', '3': 7, '4': 1, '5': 9, '10': 'address'},
    {'1': 'latitude', '3': 8, '4': 1, '5': 1, '10': 'latitude'},
    {'1': 'longitude', '3': 9, '4': 1, '5': 1, '10': 'longitude'},
  ],
};

/// Descriptor for `UserGpsLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userGpsLocationDescriptor = $convert.base64Decode(
    'Cg9Vc2VyR3BzTG9jYXRpb24SGAoHY291bnRyeRgBIAEoCVIHY291bnRyeRIaCghwcm92aW5jZR'
    'gCIAEoCVIIcHJvdmluY2USEgoEY2l0eRgDIAEoCVIEY2l0eRIaCghkaXN0cmljdBgEIAEoCVII'
    'ZGlzdHJpY3QSFgoGc3RyZWV0GAUgASgJUgZzdHJlZXQSIwoNc3RyZWV0X251bWJlchgGIAEoCV'
    'IMc3RyZWV0TnVtYmVyEhgKB2FkZHJlc3MYByABKAlSB2FkZHJlc3MSGgoIbGF0aXR1ZGUYCCAB'
    'KAFSCGxhdGl0dWRlEhwKCWxvbmdpdHVkZRgJIAEoAVIJbG9uZ2l0dWRl');

