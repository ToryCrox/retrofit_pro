///
//  Generated code. Do not modify.
//  source: user_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user_info.pbenum.dart';

export 'user_info.pbenum.dart';

class UserInfoResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserInfoResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..aOM<UserInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', subBuilder: UserInfo.create)
    ..hasRequiredFields = false
  ;

  UserInfoResp._() : super();
  factory UserInfoResp({
    $core.int? code,
    $core.String? msg,
    UserInfo? data,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory UserInfoResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfoResp clone() => UserInfoResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfoResp copyWith(void Function(UserInfoResp) updates) => super.copyWith((message) => updates(message as UserInfoResp)) as UserInfoResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfoResp create() => UserInfoResp._();
  UserInfoResp createEmptyInstance() => create();
  static $pb.PbList<UserInfoResp> createRepeated() => $pb.PbList<UserInfoResp>();
  @$core.pragma('dart2js:noInline')
  static UserInfoResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoResp>(create);
  static UserInfoResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  UserInfo get data => $_getN(2);
  @$pb.TagNumber(3)
  set data(UserInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
  @$pb.TagNumber(3)
  UserInfo ensureData() => $_ensure(2);
}

class UserInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<UserBasic>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'base', subBuilder: UserBasic.create)
    ..aOM<UserStatus>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', subBuilder: UserStatus.create)
    ..aOM<UserGpsLocation>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpsLocation', protoName: 'gpsLocation', subBuilder: UserGpsLocation.create)
    ..hasRequiredFields = false
  ;

  UserInfo._() : super();
  factory UserInfo({
    UserBasic? base,
    UserStatus? status,
    UserGpsLocation? gpsLocation,
  }) {
    final _result = create();
    if (base != null) {
      _result.base = base;
    }
    if (status != null) {
      _result.status = status;
    }
    if (gpsLocation != null) {
      _result.gpsLocation = gpsLocation;
    }
    return _result;
  }
  factory UserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfo clone() => UserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfo copyWith(void Function(UserInfo) updates) => super.copyWith((message) => updates(message as UserInfo)) as UserInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfo create() => UserInfo._();
  UserInfo createEmptyInstance() => create();
  static $pb.PbList<UserInfo> createRepeated() => $pb.PbList<UserInfo>();
  @$core.pragma('dart2js:noInline')
  static UserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfo>(create);
  static UserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  UserBasic get base => $_getN(0);
  @$pb.TagNumber(1)
  set base(UserBasic v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  UserBasic ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  UserStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(UserStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
  @$pb.TagNumber(2)
  UserStatus ensureStatus() => $_ensure(1);

  @$pb.TagNumber(3)
  UserGpsLocation get gpsLocation => $_getN(2);
  @$pb.TagNumber(3)
  set gpsLocation(UserGpsLocation v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGpsLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearGpsLocation() => clearField(3);
  @$pb.TagNumber(3)
  UserGpsLocation ensureGpsLocation() => $_ensure(2);
}

class UserBasic extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserBasic', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uid', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..e<UserSex>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sex', $pb.PbFieldType.OE, defaultOrMaker: UserSex.unknown, valueOf: UserSex.valueOf, enumValues: UserSex.values)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'age', $pb.PbFieldType.OU3)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOM<UserLocation>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', subBuilder: UserLocation.create)
    ..pc<UserTag>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags', $pb.PbFieldType.PM, subBuilder: UserTag.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'introduction')
    ..hasRequiredFields = false
  ;

  UserBasic._() : super();
  factory UserBasic({
    $core.int? uid,
    $core.String? name,
    $core.String? avatar,
    UserSex? sex,
    $core.int? age,
    $core.String? phone,
    UserLocation? location,
    $core.Iterable<UserTag>? tags,
    $core.String? introduction,
  }) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    if (name != null) {
      _result.name = name;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (sex != null) {
      _result.sex = sex;
    }
    if (age != null) {
      _result.age = age;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (location != null) {
      _result.location = location;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (introduction != null) {
      _result.introduction = introduction;
    }
    return _result;
  }
  factory UserBasic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserBasic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserBasic clone() => UserBasic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserBasic copyWith(void Function(UserBasic) updates) => super.copyWith((message) => updates(message as UserBasic)) as UserBasic; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserBasic create() => UserBasic._();
  UserBasic createEmptyInstance() => create();
  static $pb.PbList<UserBasic> createRepeated() => $pb.PbList<UserBasic>();
  @$core.pragma('dart2js:noInline')
  static UserBasic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserBasic>(create);
  static UserBasic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get uid => $_getIZ(0);
  @$pb.TagNumber(1)
  set uid($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(5)
  UserSex get sex => $_getN(3);
  @$pb.TagNumber(5)
  set sex(UserSex v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSex() => $_has(3);
  @$pb.TagNumber(5)
  void clearSex() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get age => $_getIZ(4);
  @$pb.TagNumber(6)
  set age($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasAge() => $_has(4);
  @$pb.TagNumber(6)
  void clearAge() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get phone => $_getSZ(5);
  @$pb.TagNumber(7)
  set phone($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasPhone() => $_has(5);
  @$pb.TagNumber(7)
  void clearPhone() => clearField(7);

  @$pb.TagNumber(8)
  UserLocation get location => $_getN(6);
  @$pb.TagNumber(8)
  set location(UserLocation v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasLocation() => $_has(6);
  @$pb.TagNumber(8)
  void clearLocation() => clearField(8);
  @$pb.TagNumber(8)
  UserLocation ensureLocation() => $_ensure(6);

  @$pb.TagNumber(9)
  $core.List<UserTag> get tags => $_getList(7);

  @$pb.TagNumber(10)
  $core.String get introduction => $_getSZ(8);
  @$pb.TagNumber(10)
  set introduction($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasIntroduction() => $_has(8);
  @$pb.TagNumber(10)
  void clearIntroduction() => clearField(10);
}

class UserStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isOnline')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isNew')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isFollow')
    ..hasRequiredFields = false
  ;

  UserStatus._() : super();
  factory UserStatus({
    $core.bool? isOnline,
    $core.bool? isNew,
    $core.bool? isFollow,
  }) {
    final _result = create();
    if (isOnline != null) {
      _result.isOnline = isOnline;
    }
    if (isNew != null) {
      _result.isNew = isNew;
    }
    if (isFollow != null) {
      _result.isFollow = isFollow;
    }
    return _result;
  }
  factory UserStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserStatus clone() => UserStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserStatus copyWith(void Function(UserStatus) updates) => super.copyWith((message) => updates(message as UserStatus)) as UserStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserStatus create() => UserStatus._();
  UserStatus createEmptyInstance() => create();
  static $pb.PbList<UserStatus> createRepeated() => $pb.PbList<UserStatus>();
  @$core.pragma('dart2js:noInline')
  static UserStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserStatus>(create);
  static UserStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isOnline => $_getBF(0);
  @$pb.TagNumber(1)
  set isOnline($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsOnline() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOnline() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isNew => $_getBF(1);
  @$pb.TagNumber(2)
  set isNew($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsNew() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsNew() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isFollow => $_getBF(2);
  @$pb.TagNumber(3)
  set isFollow($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsFollow() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsFollow() => clearField(3);
}

class UserLocation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserLocation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'province')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..hasRequiredFields = false
  ;

  UserLocation._() : super();
  factory UserLocation({
    $core.String? country,
    $core.String? province,
    $core.String? city,
  }) {
    final _result = create();
    if (country != null) {
      _result.country = country;
    }
    if (province != null) {
      _result.province = province;
    }
    if (city != null) {
      _result.city = city;
    }
    return _result;
  }
  factory UserLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLocation clone() => UserLocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLocation copyWith(void Function(UserLocation) updates) => super.copyWith((message) => updates(message as UserLocation)) as UserLocation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserLocation create() => UserLocation._();
  UserLocation createEmptyInstance() => create();
  static $pb.PbList<UserLocation> createRepeated() => $pb.PbList<UserLocation>();
  @$core.pragma('dart2js:noInline')
  static UserLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLocation>(create);
  static UserLocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get country => $_getSZ(0);
  @$pb.TagNumber(1)
  set country($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountry() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountry() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get province => $_getSZ(1);
  @$pb.TagNumber(2)
  set province($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProvince() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvince() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get city => $_getSZ(2);
  @$pb.TagNumber(3)
  set city($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCity() => $_has(2);
  @$pb.TagNumber(3)
  void clearCity() => clearField(3);
}

class UserTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserTag', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UserTag._() : super();
  factory UserTag({
    $core.String? name,
    $core.int? type,
    $core.int? id,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory UserTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserTag clone() => UserTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserTag copyWith(void Function(UserTag) updates) => super.copyWith((message) => updates(message as UserTag)) as UserTag; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserTag create() => UserTag._();
  UserTag createEmptyInstance() => create();
  static $pb.PbList<UserTag> createRepeated() => $pb.PbList<UserTag>();
  @$core.pragma('dart2js:noInline')
  static UserTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserTag>(create);
  static UserTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get id => $_getIZ(2);
  @$pb.TagNumber(3)
  set id($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => clearField(3);
}

class UserGpsLocation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserGpsLocation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'province')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'district')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'street')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'streetNumber')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OD)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  UserGpsLocation._() : super();
  factory UserGpsLocation({
    $core.String? country,
    $core.String? province,
    $core.String? city,
    $core.String? district,
    $core.String? street,
    $core.String? streetNumber,
    $core.String? address,
    $core.double? latitude,
    $core.double? longitude,
  }) {
    final _result = create();
    if (country != null) {
      _result.country = country;
    }
    if (province != null) {
      _result.province = province;
    }
    if (city != null) {
      _result.city = city;
    }
    if (district != null) {
      _result.district = district;
    }
    if (street != null) {
      _result.street = street;
    }
    if (streetNumber != null) {
      _result.streetNumber = streetNumber;
    }
    if (address != null) {
      _result.address = address;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    return _result;
  }
  factory UserGpsLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserGpsLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserGpsLocation clone() => UserGpsLocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserGpsLocation copyWith(void Function(UserGpsLocation) updates) => super.copyWith((message) => updates(message as UserGpsLocation)) as UserGpsLocation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserGpsLocation create() => UserGpsLocation._();
  UserGpsLocation createEmptyInstance() => create();
  static $pb.PbList<UserGpsLocation> createRepeated() => $pb.PbList<UserGpsLocation>();
  @$core.pragma('dart2js:noInline')
  static UserGpsLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserGpsLocation>(create);
  static UserGpsLocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get country => $_getSZ(0);
  @$pb.TagNumber(1)
  set country($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountry() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountry() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get province => $_getSZ(1);
  @$pb.TagNumber(2)
  set province($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProvince() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvince() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get city => $_getSZ(2);
  @$pb.TagNumber(3)
  set city($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCity() => $_has(2);
  @$pb.TagNumber(3)
  void clearCity() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get district => $_getSZ(3);
  @$pb.TagNumber(4)
  set district($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDistrict() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistrict() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get street => $_getSZ(4);
  @$pb.TagNumber(5)
  set street($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStreet() => $_has(4);
  @$pb.TagNumber(5)
  void clearStreet() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get streetNumber => $_getSZ(5);
  @$pb.TagNumber(6)
  set streetNumber($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStreetNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearStreetNumber() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get address => $_getSZ(6);
  @$pb.TagNumber(7)
  set address($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAddress() => $_has(6);
  @$pb.TagNumber(7)
  void clearAddress() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get latitude => $_getN(7);
  @$pb.TagNumber(8)
  set latitude($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLatitude() => $_has(7);
  @$pb.TagNumber(8)
  void clearLatitude() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get longitude => $_getN(8);
  @$pb.TagNumber(9)
  set longitude($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLongitude() => $_has(8);
  @$pb.TagNumber(9)
  void clearLongitude() => clearField(9);
}

