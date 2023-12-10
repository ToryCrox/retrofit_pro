

import 'package:retrofit_example_protobuf/type_util.dart';

class JsonUserInfo {
  final int uid;
  final String name;
  final int age;
  final List<String> tags;
  final bool isMale;
  final String? avatar;
  final List<JsonUserInfo> friend;
  final JsonUserInfo bestFriend;

  const JsonUserInfo({
    required this.uid,
    required this.name,
    required this.age,
    required this.tags,
    required this.isMale,
    this.avatar,
    required this.friend,
    required this.bestFriend,
  });

  JsonUserInfo copyWith({
    int? uid,
    String? name,
    int? age,
    List<String>? tags,
    bool? isMale,
    String? avatar,
    List<JsonUserInfo>? friend,
    JsonUserInfo? bestFriend,
  }) {
    return JsonUserInfo(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      age: age ?? this.age,
      tags: tags ?? this.tags,
      isMale: isMale ?? this.isMale,
      avatar: avatar ?? this.avatar,
      friend: friend ?? this.friend,
      bestFriend: bestFriend ?? this.bestFriend,
    );
  }

  factory JsonUserInfo.fromMap(Map<String, dynamic> map) {
    return JsonUserInfo(
      uid: TypeUtil.parseInt(map['uid']),
      name: TypeUtil.parseString(map['name']),
      age: TypeUtil.parseInt(map['age']),
      tags: TypeUtil.parseStringList(map['tags']),
      isMale: TypeUtil.parseBool(map['is_male']),
      avatar: TypeUtil.parseString(map['avatar']),
      friend: TypeUtil.parseList(
          map['friend'], (e) => JsonUserInfo.fromMap(TypeUtil.parseMap(e))),
      bestFriend: JsonUserInfo.fromMap(TypeUtil.parseMap(map['best_friend'])),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'age': age,
      'tags': tags,
      'is_male': isMale,
      'avatar': avatar,
      'friend': friend.map((e) => e.toMap()).toList(),
      'best_friend': bestFriend.toMap(),
    };
  }

  factory JsonUserInfo.fromJson(Map<String, dynamic> json) =>
      JsonUserInfo.fromMap(json);

  Map<String, dynamic> toJson() => toMap();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JsonUserInfo &&
          runtimeType == other.runtimeType &&
          uid == other.uid &&
          name == other.name &&
          age == other.age &&
          tags == other.tags &&
          isMale == other.isMale &&
          avatar == other.avatar &&
          friend == other.friend &&
          bestFriend == other.bestFriend);

  @override
  int get hashCode =>
      uid.hashCode ^
      name.hashCode ^
      age.hashCode ^
      tags.hashCode ^
      isMale.hashCode ^
      avatar.hashCode ^
      friend.hashCode ^
      bestFriend.hashCode;

  @override
  String toString() {
    return 'JsonUserInfo${TypeUtil.parseString(toMap())}';
  }
}