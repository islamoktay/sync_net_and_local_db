// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_insert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInsertModelImpl _$$UserInsertModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInsertModelImpl(
      name: json['name'] as String?,
      job: json['job'] as String?,
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );
