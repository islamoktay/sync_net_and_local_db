import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_response_model.freezed.dart';
part 'create_user_response_model.g.dart';

@Freezed(toJson: false)
class CreateUserResponseModel with _$CreateUserResponseModel {
  const factory CreateUserResponseModel({
    String? name,
  }) = _CreateUserResponseModel;

  factory CreateUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateUserResponseModelFromJson(json);
}
