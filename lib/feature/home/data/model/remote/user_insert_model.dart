import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_insert_model.freezed.dart';
part 'user_insert_model.g.dart';

@Freezed(unionValueCase: FreezedUnionCase.snake, toJson: false)
class UserInsertModel with _$UserInsertModel {
  const factory UserInsertModel({
    String? name,
    String? job,
    String? id,
    DateTime? createdAt,
  }) = _UserInsertModel;

  factory UserInsertModel.fromJson(Map<String, dynamic> json) =>
      _$UserInsertModelFromJson(json);
}
