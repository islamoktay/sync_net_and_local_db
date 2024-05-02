part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial({
    @Default([]) List<User> users,
  }) = _Initial;
}
