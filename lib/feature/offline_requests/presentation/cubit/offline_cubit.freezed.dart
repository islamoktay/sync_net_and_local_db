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
  List<OfflineRequestEntity> get waiting => throw _privateConstructorUsedError;
  List<OfflineRequestEntity> get success => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfflineRequestEntity> waiting,
            List<OfflineRequestEntity> success)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OfflineRequestEntity> waiting,
            List<OfflineRequestEntity> success)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfflineRequestEntity> waiting,
            List<OfflineRequestEntity> success)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfflineStateCopyWith<OfflineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineStateCopyWith<$Res> {
  factory $OfflineStateCopyWith(
          OfflineState value, $Res Function(OfflineState) then) =
      _$OfflineStateCopyWithImpl<$Res, OfflineState>;
  @useResult
  $Res call(
      {List<OfflineRequestEntity> waiting, List<OfflineRequestEntity> success});
}

/// @nodoc
class _$OfflineStateCopyWithImpl<$Res, $Val extends OfflineState>
    implements $OfflineStateCopyWith<$Res> {
  _$OfflineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waiting = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      waiting: null == waiting
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as List<OfflineRequestEntity>,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as List<OfflineRequestEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OfflineStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OfflineRequestEntity> waiting, List<OfflineRequestEntity> success});
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
    Object? waiting = null,
    Object? success = null,
  }) {
    return _then(_$InitialImpl(
      waiting: null == waiting
          ? _value._waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as List<OfflineRequestEntity>,
      success: null == success
          ? _value._success
          : success // ignore: cast_nullable_to_non_nullable
              as List<OfflineRequestEntity>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<OfflineRequestEntity> waiting =
          const <OfflineRequestEntity>[],
      final List<OfflineRequestEntity> success =
          const <OfflineRequestEntity>[]})
      : _waiting = waiting,
        _success = success;

  final List<OfflineRequestEntity> _waiting;
  @override
  @JsonKey()
  List<OfflineRequestEntity> get waiting {
    if (_waiting is EqualUnmodifiableListView) return _waiting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waiting);
  }

  final List<OfflineRequestEntity> _success;
  @override
  @JsonKey()
  List<OfflineRequestEntity> get success {
    if (_success is EqualUnmodifiableListView) return _success;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_success);
  }

  @override
  String toString() {
    return 'OfflineState.initial(waiting: $waiting, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._waiting, _waiting) &&
            const DeepCollectionEquality().equals(other._success, _success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_waiting),
      const DeepCollectionEquality().hash(_success));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfflineRequestEntity> waiting,
            List<OfflineRequestEntity> success)
        initial,
  }) {
    return initial(waiting, success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OfflineRequestEntity> waiting,
            List<OfflineRequestEntity> success)?
        initial,
  }) {
    return initial?.call(waiting, success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfflineRequestEntity> waiting,
            List<OfflineRequestEntity> success)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(waiting, success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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
      {final List<OfflineRequestEntity> waiting,
      final List<OfflineRequestEntity> success}) = _$InitialImpl;

  @override
  List<OfflineRequestEntity> get waiting;
  @override
  List<OfflineRequestEntity> get success;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
