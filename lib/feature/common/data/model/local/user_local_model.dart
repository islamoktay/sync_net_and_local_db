import 'package:isar/isar.dart';

import 'package:sync_net_and_local_db/feature/common/domain/entity/user.dart';

part 'user_local_model.g.dart';

@collection
class UserLocalModel {
  Id? id;
  String? netId;
  String? name;
  String? mail;
  String? phone;
  DateTime? updatedTime;
}

extension UserModelX on UserLocalModel {
  User get toEntity {
    return User(
      id: netId ?? '',
      mail: mail ?? '',
      name: name ?? '',
      phone: phone ?? '',
      updatedTime: updatedTime,
      localId: id ?? 0,
    );
  }

  UserLocalModel fromEntity(User user) {
    return UserLocalModel()
      ..id = user.localId
      ..netId = user.id
      ..mail = user.mail
      ..name = user.name
      ..phone = user.phone
      ..updatedTime = user.updatedTime;
  }
}
