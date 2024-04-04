// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserReqModel {
  String? get name => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserReqModelCopyWith<UserReqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReqModelCopyWith<$Res> {
  factory $UserReqModelCopyWith(
          UserReqModel value, $Res Function(UserReqModel) then) =
      _$UserReqModelCopyWithImpl<$Res, UserReqModel>;
  @useResult
  $Res call({String? name, String? job});
}

/// @nodoc
class _$UserReqModelCopyWithImpl<$Res, $Val extends UserReqModel>
    implements $UserReqModelCopyWith<$Res> {
  _$UserReqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? job = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserReqModelImplCopyWith<$Res>
    implements $UserReqModelCopyWith<$Res> {
  factory _$$UserReqModelImplCopyWith(
          _$UserReqModelImpl value, $Res Function(_$UserReqModelImpl) then) =
      __$$UserReqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? job});
}

/// @nodoc
class __$$UserReqModelImplCopyWithImpl<$Res>
    extends _$UserReqModelCopyWithImpl<$Res, _$UserReqModelImpl>
    implements _$$UserReqModelImplCopyWith<$Res> {
  __$$UserReqModelImplCopyWithImpl(
      _$UserReqModelImpl _value, $Res Function(_$UserReqModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? job = freezed,
  }) {
    return _then(_$UserReqModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$UserReqModelImpl implements _UserReqModel {
  const _$UserReqModelImpl({this.name, this.job});

  @override
  final String? name;
  @override
  final String? job;

  @override
  String toString() {
    return 'UserReqModel(name: $name, job: $job)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserReqModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.job, job) || other.job == job));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, job);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserReqModelImplCopyWith<_$UserReqModelImpl> get copyWith =>
      __$$UserReqModelImplCopyWithImpl<_$UserReqModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserReqModelImplToJson(
      this,
    );
  }
}

abstract class _UserReqModel implements UserReqModel {
  const factory _UserReqModel({final String? name, final String? job}) =
      _$UserReqModelImpl;

  @override
  String? get name;
  @override
  String? get job;
  @override
  @JsonKey(ignore: true)
  _$$UserReqModelImplCopyWith<_$UserReqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
