import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffee_model.freezed.dart';
part 'coffee_model.g.dart';

@freezed
class CoffeeModel with _$CoffeeModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory CoffeeModel({
    String? id,
    String? title,
    String? description,
    String? category,
    double? pricse,
    String? imageUrl,
  }) = _CoffeeModel;

  factory CoffeeModel.fromJson(Map<String, dynamic> json) =>
      _$CoffeeModelFromJson(json);
}
