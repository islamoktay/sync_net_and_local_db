// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_insert_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInsertModel _$UserInsertModelFromJson(Map<String, dynamic> json) {
  return _UserInsertModel.fromJson(json);
}

/// @nodoc
mixin _$UserInsertModel {
  String? get name => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInsertModelCopyWith<UserInsertModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInsertModelCopyWith<$Res> {
  factory $UserInsertModelCopyWith(
          UserInsertModel value, $Res Function(UserInsertModel) then) =
      _$UserInsertModelCopyWithImpl<$Res, UserInsertModel>;
  @useResult
  $Res call({String? name, String? job, String? id, DateTime? createdAt});
}

/// @nodoc
class _$UserInsertModelCopyWithImpl<$Res, $Val extends UserInsertModel>
    implements $UserInsertModelCopyWith<$Res> {
  _$UserInsertModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? job = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInsertModelImplCopyWith<$Res>
    implements $UserInsertModelCopyWith<$Res> {
  factory _$$UserInsertModelImplCopyWith(_$UserInsertModelImpl value,
          $Res Function(_$UserInsertModelImpl) then) =
      __$$UserInsertModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? job, String? id, DateTime? createdAt});
}

/// @nodoc
class __$$UserInsertModelImplCopyWithImpl<$Res>
    extends _$UserInsertModelCopyWithImpl<$Res, _$UserInsertModelImpl>
    implements _$$UserInsertModelImplCopyWith<$Res> {
  __$$UserInsertModelImplCopyWithImpl(
      _$UserInsertModelImpl _value, $Res Function(_$UserInsertModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? job = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$UserInsertModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$UserInsertModelImpl implements _UserInsertModel {
  const _$UserInsertModelImpl({this.name, this.job, this.id, this.createdAt});

  factory _$UserInsertModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInsertModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? job;
  @override
  final String? id;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'UserInsertModel(name: $name, job: $job, id: $id, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInsertModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, job, id, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInsertModelImplCopyWith<_$UserInsertModelImpl> get copyWith =>
      __$$UserInsertModelImplCopyWithImpl<_$UserInsertModelImpl>(
          this, _$identity);
}

abstract class _UserInsertModel implements UserInsertModel {
  const factory _UserInsertModel(
      {final String? name,
      final String? job,
      final String? id,
      final DateTime? createdAt}) = _$UserInsertModelImpl;

  factory _UserInsertModel.fromJson(Map<String, dynamic> json) =
      _$UserInsertModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get job;
  @override
  String? get id;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$UserInsertModelImplCopyWith<_$UserInsertModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
