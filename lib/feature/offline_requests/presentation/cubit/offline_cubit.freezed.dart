// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OfflineState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)
        initial,
    required TResult Function() noNetwork,
    required TResult Function() emptyList,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult? Function()? noNetwork,
    TResult? Function()? emptyList,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult Function()? noNetwork,
    TResult Function()? emptyList,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_noNetwork value) noNetwork,
    required TResult Function(_emptyList value) emptyList,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_noNetwork value)? noNetwork,
    TResult? Function(_emptyList value)? emptyList,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_noNetwork value)? noNetwork,
    TResult Function(_emptyList value)? emptyList,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineStateCopyWith<$Res> {
  factory $OfflineStateCopyWith(
          OfflineState value, $Res Function(OfflineState) then) =
      _$OfflineStateCopyWithImpl<$Res, OfflineState>;
}

/// @nodoc
class _$OfflineStateCopyWithImpl<$Res, $Val extends OfflineState>
    implements $OfflineStateCopyWith<$Res> {
  _$OfflineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<OfflineRequestEntity> waitingList,
      List<OfflineRequestEntity> successList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OfflineStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waitingList = null,
    Object? successList = null,
  }) {
    return _then(_$InitialImpl(
      waitingList: null == waitingList
          ? _value._waitingList
          : waitingList // ignore: cast_nullable_to_non_nullable
              as List<OfflineRequestEntity>,
      successList: null == successList
          ? _value._successList
          : successList // ignore: cast_nullable_to_non_nullable
              as List<OfflineRequestEntity>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<OfflineRequestEntity> waitingList =
          const <OfflineRequestEntity>[],
      final List<OfflineRequestEntity> successList =
          const <OfflineRequestEntity>[]})
      : _waitingList = waitingList,
        _successList = successList;

  final List<OfflineRequestEntity> _waitingList;
  @override
  @JsonKey()
  List<OfflineRequestEntity> get waitingList {
    if (_waitingList is EqualUnmodifiableListView) return _waitingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waitingList);
  }

  final List<OfflineRequestEntity> _successList;
  @override
  @JsonKey()
  List<OfflineRequestEntity> get successList {
    if (_successList is EqualUnmodifiableListView) return _successList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_successList);
  }

  @override
  String toString() {
    return 'OfflineState.initial(waitingList: $waitingList, successList: $successList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._waitingList, _waitingList) &&
            const DeepCollectionEquality()
                .equals(other._successList, _successList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_waitingList),
      const DeepCollectionEquality().hash(_successList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)
        initial,
    required TResult Function() noNetwork,
    required TResult Function() emptyList,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() success,
  }) {
    return initial(waitingList, successList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult? Function()? noNetwork,
    TResult? Function()? emptyList,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? success,
  }) {
    return initial?.call(waitingList, successList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult Function()? noNetwork,
    TResult Function()? emptyList,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(waitingList, successList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_noNetwork value) noNetwork,
    required TResult Function(_emptyList value) emptyList,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_noNetwork value)? noNetwork,
    TResult? Function(_emptyList value)? emptyList,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_noNetwork value)? noNetwork,
    TResult Function(_emptyList value)? emptyList,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OfflineState {
  const factory _Initial(
      {final List<OfflineRequestEntity> waitingList,
      final List<OfflineRequestEntity> successList}) = _$InitialImpl;

  List<OfflineRequestEntity> get waitingList;
  List<OfflineRequestEntity> get successList;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$noNetworkImplCopyWith<$Res> {
  factory _$$noNetworkImplCopyWith(
          _$noNetworkImpl value, $Res Function(_$noNetworkImpl) then) =
      __$$noNetworkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$noNetworkImplCopyWithImpl<$Res>
    extends _$OfflineStateCopyWithImpl<$Res, _$noNetworkImpl>
    implements _$$noNetworkImplCopyWith<$Res> {
  __$$noNetworkImplCopyWithImpl(
      _$noNetworkImpl _value, $Res Function(_$noNetworkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$noNetworkImpl implements _noNetwork {
  const _$noNetworkImpl();

  @override
  String toString() {
    return 'OfflineState.noNetwork()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$noNetworkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)
        initial,
    required TResult Function() noNetwork,
    required TResult Function() emptyList,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() success,
  }) {
    return noNetwork();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult? Function()? noNetwork,
    TResult? Function()? emptyList,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? success,
  }) {
    return noNetwork?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult Function()? noNetwork,
    TResult Function()? emptyList,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_noNetwork value) noNetwork,
    required TResult Function(_emptyList value) emptyList,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return noNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_noNetwork value)? noNetwork,
    TResult? Function(_emptyList value)? emptyList,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return noNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_noNetwork value)? noNetwork,
    TResult Function(_emptyList value)? emptyList,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork(this);
    }
    return orElse();
  }
}

abstract class _noNetwork implements OfflineState {
  const factory _noNetwork() = _$noNetworkImpl;
}

/// @nodoc
abstract class _$$emptyListImplCopyWith<$Res> {
  factory _$$emptyListImplCopyWith(
          _$emptyListImpl value, $Res Function(_$emptyListImpl) then) =
      __$$emptyListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$emptyListImplCopyWithImpl<$Res>
    extends _$OfflineStateCopyWithImpl<$Res, _$emptyListImpl>
    implements _$$emptyListImplCopyWith<$Res> {
  __$$emptyListImplCopyWithImpl(
      _$emptyListImpl _value, $Res Function(_$emptyListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$emptyListImpl implements _emptyList {
  const _$emptyListImpl();

  @override
  String toString() {
    return 'OfflineState.emptyList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$emptyListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)
        initial,
    required TResult Function() noNetwork,
    required TResult Function() emptyList,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() success,
  }) {
    return emptyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult? Function()? noNetwork,
    TResult? Function()? emptyList,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? success,
  }) {
    return emptyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult Function()? noNetwork,
    TResult Function()? emptyList,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_noNetwork value) noNetwork,
    required TResult Function(_emptyList value) emptyList,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return emptyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_noNetwork value)? noNetwork,
    TResult? Function(_emptyList value)? emptyList,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return emptyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_noNetwork value)? noNetwork,
    TResult Function(_emptyList value)? emptyList,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList(this);
    }
    return orElse();
  }
}

abstract class _emptyList implements OfflineState {
  const factory _emptyList() = _$emptyListImpl;
}

/// @nodoc
abstract class _$$loadingImplCopyWith<$Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl value, $Res Function(_$loadingImpl) then) =
      __$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<$Res>
    extends _$OfflineStateCopyWithImpl<$Res, _$loadingImpl>
    implements _$$loadingImplCopyWith<$Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl _value, $Res Function(_$loadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingImpl implements _loading {
  const _$loadingImpl();

  @override
  String toString() {
    return 'OfflineState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)
        initial,
    required TResult Function() noNetwork,
    required TResult Function() emptyList,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult? Function()? noNetwork,
    TResult? Function()? emptyList,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult Function()? noNetwork,
    TResult Function()? emptyList,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_noNetwork value) noNetwork,
    required TResult Function(_emptyList value) emptyList,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_noNetwork value)? noNetwork,
    TResult? Function(_emptyList value)? emptyList,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_noNetwork value)? noNetwork,
    TResult Function(_emptyList value)? emptyList,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements OfflineState {
  const factory _loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$errorImplCopyWith<$Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl value, $Res Function(_$errorImpl) then) =
      __$$errorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$errorImplCopyWithImpl<$Res>
    extends _$OfflineStateCopyWithImpl<$Res, _$errorImpl>
    implements _$$errorImplCopyWith<$Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl _value, $Res Function(_$errorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$errorImpl implements _error {
  const _$errorImpl();

  @override
  String toString() {
    return 'OfflineState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$errorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)
        initial,
    required TResult Function() noNetwork,
    required TResult Function() emptyList,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() success,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult? Function()? noNetwork,
    TResult? Function()? emptyList,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? success,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult Function()? noNetwork,
    TResult Function()? emptyList,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_noNetwork value) noNetwork,
    required TResult Function(_emptyList value) emptyList,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_noNetwork value)? noNetwork,
    TResult? Function(_emptyList value)? emptyList,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_noNetwork value)? noNetwork,
    TResult Function(_emptyList value)? emptyList,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements OfflineState {
  const factory _error() = _$errorImpl;
}

/// @nodoc
abstract class _$$successImplCopyWith<$Res> {
  factory _$$successImplCopyWith(
          _$successImpl value, $Res Function(_$successImpl) then) =
      __$$successImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$successImplCopyWithImpl<$Res>
    extends _$OfflineStateCopyWithImpl<$Res, _$successImpl>
    implements _$$successImplCopyWith<$Res> {
  __$$successImplCopyWithImpl(
      _$successImpl _value, $Res Function(_$successImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$successImpl implements _success {
  const _$successImpl();

  @override
  String toString() {
    return 'OfflineState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$successImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)
        initial,
    required TResult Function() noNetwork,
    required TResult Function() emptyList,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult? Function()? noNetwork,
    TResult? Function()? emptyList,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfflineRequestEntity> waitingList,
            List<OfflineRequestEntity> successList)?
        initial,
    TResult Function()? noNetwork,
    TResult Function()? emptyList,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_noNetwork value) noNetwork,
    required TResult Function(_emptyList value) emptyList,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_noNetwork value)? noNetwork,
    TResult? Function(_emptyList value)? emptyList,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_noNetwork value)? noNetwork,
    TResult Function(_emptyList value)? emptyList,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements OfflineState {
  const factory _success() = _$successImpl;
}
