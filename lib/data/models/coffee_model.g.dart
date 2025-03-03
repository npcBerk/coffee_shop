// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoffeeModelImpl _$$CoffeeModelImplFromJson(Map<String, dynamic> json) =>
    _$CoffeeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      category:
          json['category'] == null
              ? null
              : CategoryModel.fromJson(
                json['category'] as Map<String, dynamic>,
              ),
      price: (json['price'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$CoffeeModelImplToJson(_$CoffeeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category?.toJson(),
      'price': instance.price,
      'rating': instance.rating,
      'imageUrl': instance.imageUrl,
    };
