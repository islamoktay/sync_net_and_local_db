import 'package:isar/isar.dart';

import 'package:sync_net_and_local_db/feature/home/domain/entity/user.dart';

part 'user_local_model.g.dart';

@collection
class UserLocalModel {
  Id? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;
}

extension UserModelX on UserLocalModel {
  User get toEntity {
    return User(
      email: email,
      firstName: firstName,
      lastName: lastName,
      avatar: avatar,
    );
  }

  UserLocalModel fromEntity(User user) {
    return UserLocalModel()
      ..avatar = avatar
      ..email = email
      ..firstName = firstName
      ..lastName = lastName;
  }
}
