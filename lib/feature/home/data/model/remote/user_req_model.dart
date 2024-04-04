import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sync_net_and_local_db/feature/home/domain/entity/user_req.dart';

part 'user_req_model.freezed.dart';
part 'user_req_model.g.dart';

@Freezed(fromJson: false, toJson: true)
class UserReqModel with _$UserReqModel {
  const factory UserReqModel({
    String? name,
    String? job,
  }) = _UserReqModel;
}

extension UserReqModelX on UserReqModel {
  UserReqModel fromEntity(UserReq req) {
    return UserReqModel(
      name: req.name,
      job: req.job,
    );
  }
}
