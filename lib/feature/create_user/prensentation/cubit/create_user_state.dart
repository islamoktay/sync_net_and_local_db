part of 'create_user_cubit.dart';

@freezed
class CreateUserState with _$CreateUserState {
  const factory CreateUserState.initial() = _Initial;
  const factory CreateUserState.loading() = _loading;
  const factory CreateUserState.success() = _success;
  const factory CreateUserState.error() = _error;
}
