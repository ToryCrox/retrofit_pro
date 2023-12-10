import 'dart:convert';

import 'package:retrofit_example_protobuf/protobuf/index.dart';

final demoUser = UserInfo(
  base: UserBasic(
    uid: 1000000,
    name: 'Lucy',
    avatar:
    'https://th.bing.com/th/id/R.02294bab4e1a868310c3d2e7b09a1ecc?rik=JJpww0oNTB8a3w&riu=http%3a%2f%2fimg2.woyaogexing.com%2f2017%2f06%2f26%2f2b7fd45be3074834!400x400_big.jpg&ehk=fmQSnaeG%2bd1xZ7bGc%2bP%2f%2fuAq9eE7IV%2b%2bI0mrZydsO0s%3d&risl=&pid=ImgRaw&r=0',
    sex: UserSex.female,
    age: 29,
    location: UserLocation(city: '武汉'),
    phone: '13888888888',
    tags: [UserTag(name: '美女'), UserTag(name: '大长腿')],
    introduction: '这是我的恋爱宣扬，欢迎━(*｀∀´*)...',
  ),
  status: UserStatus(
    isOnline: true,
    isNew: true,
    isFollow: true,
  ),
);

final demoUserRep = UserInfoResp(
  code: 0,
  msg: 'success',
  data: demoUser,
);

final demoUserBytes = demoUser.writeToBuffer();

final demoUserRepBytes = demoUserRep.writeToBuffer();
