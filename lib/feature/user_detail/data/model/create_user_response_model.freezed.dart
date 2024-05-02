// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateUserResponseModel _$CreateUserResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateUserResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreateUserResponseModel {
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateUserResponseModelCopyWith<CreateUserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserResponseModelCopyWith<$Res> {
  factory $CreateUserResponseModelCopyWith(CreateUserResponseModel value,
          $Res Function(CreateUserResponseModel) then) =
      _$CreateUserResponseModelCopyWithImpl<$Res, CreateUserResponseModel>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$CreateUserResponseModelCopyWithImpl<$Res,
        $Val extends CreateUserResponseModel>
    implements $CreateUserResponseModelCopyWith<$Res> {
  _$CreateUserResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserResponseModelImplCopyWith<$Res>
    implements $CreateUserResponseModelCopyWith<$Res> {
  factory _$$CreateUserResponseModelImplCopyWith(
          _$CreateUserResponseModelImpl value,
          $Res Function(_$CreateUserResponseModelImpl) then) =
      __$$CreateUserResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$CreateUserResponseModelImplCopyWithImpl<$Res>
    extends _$CreateUserResponseModelCopyWithImpl<$Res,
        _$CreateUserResponseModelImpl>
    implements _$$CreateUserResponseModelImplCopyWith<$Res> {
  __$$CreateUserResponseModelImplCopyWithImpl(
      _$CreateUserResponseModelImpl _value,
      $Res Function(_$CreateUserResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$CreateUserResponseModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$CreateUserResponseModelImpl implements _CreateUserResponseModel {
  const _$CreateUserResponseModelImpl({this.name});

  factory _$CreateUserResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserResponseModelImplFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'CreateUserResponseModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserResponseModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserResponseModelImplCopyWith<_$CreateUserResponseModelImpl>
      get copyWith => __$$CreateUserResponseModelImplCopyWithImpl<
          _$CreateUserResponseModelImpl>(this, _$identity);
}

abstract class _CreateUserResponseModel implements CreateUserResponseModel {
  const factory _CreateUserResponseModel({final String? name}) =
      _$CreateUserResponseModelImpl;

  factory _CreateUserResponseModel.fromJson(Map<String, dynamic> json) =
      _$CreateUserResponseModelImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserResponseModelImplCopyWith<_$CreateUserResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
