part of 'user_detail_cubit.dart';

@freezed
class UserDetailState with _$UserDetailState {
  const factory UserDetailState.initial() = _Initial;
  const factory UserDetailState.loading() = _loading;
  const factory UserDetailState.success() = _success;
  const factory UserDetailState.error() = _error;
  const factory UserDetailState.userRemoved() = _userRemoved;
  const factory UserDetailState.userUpdated() = _userUpdated;
}
