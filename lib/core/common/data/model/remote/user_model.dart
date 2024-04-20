import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sync_net_and_local_db/core/common/domain/entity/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? name,
    String? mail,
    String? phone,
    String? updatedTime,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromEntity(User user) {
    return UserModel(
      name: user.name,
      mail: user.mail,
      phone: user.phone,
      updatedTime: user.updatedTime.toString(),
    );
  }
}

extension UserModelX on UserModel {
  User toEntity(String id) {
    return User(
      id: id,
      updatedTime: DateTime.tryParse(updatedTime ?? ''),
      name: name ?? '',
      mail: mail ?? '',
      phone: phone ?? '',
    );
  }
}
