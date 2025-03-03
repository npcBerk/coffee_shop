import 'package:coffee_shop/data/models/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffee_model.freezed.dart';
part 'coffee_model.g.dart';

@freezed
class CoffeeModel with _$CoffeeModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory CoffeeModel({
    int? id,
    String? title,
    String? description,
    CategoryModel? category,
    double? price,
    double? rating,
    String? imageUrl,
  }) = _CoffeeModel;

  factory CoffeeModel.fromJson(Map<String, dynamic> json) =>
      _$CoffeeModelFromJson(json);
}
