import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sync_net_and_local_db/feature/home/domain/entity/user.dart';

part 'users_model.freezed.dart';
part 'users_model.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake, toJson: false)
class UsersModel with _$UsersModel {
  const factory UsersModel({
    int? page,
    int? perPage,
    int? total,
    int? totalPages,
    List<Datum>? data,
    Support? support,
  }) = _UsersModel;

  factory UsersModel.fromJson(Map<String, dynamic> json) =>
      _$UsersModelFromJson(json);
}

@Freezed(unionValueCase: FreezedUnionCase.snake, toJson: false)
class Datum with _$Datum {
  const factory Datum({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

extension DatumModelX on Datum {
  User get toEntity {
    return User(
      email: email,
      firstName: firstName,
      lastName: lastName,
      avatar: avatar,
    );
  }
}

@Freezed(unionValueCase: FreezedUnionCase.snake, toJson: false)
class Support with _$Support {
  const factory Support({
    String? url,
    String? text,
  }) = _Support;

  factory Support.fromJson(Map<String, dynamic> json) =>
      _$SupportFromJson(json);
}
