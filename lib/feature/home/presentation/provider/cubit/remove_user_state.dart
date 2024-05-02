part of 'remove_user_cubit.dart';

@freezed
class RemoveUserState with _$RemoveUserState {
  const factory RemoveUserState.initial() = _initial;
  const factory RemoveUserState.loading() = _loading;
  const factory RemoveUserState.success() = _success;
  const factory RemoveUserState.error() = _error;
  const factory RemoveUserState.removeUserOfflineSave() =
      _removeUserOfflineSave;
}
