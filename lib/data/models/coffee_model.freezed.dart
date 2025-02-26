// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoffeeModel _$CoffeeModelFromJson(Map<String, dynamic> json) {
  return _CoffeeModel.fromJson(json);
}

/// @nodoc
mixin _$CoffeeModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  double? get pricse => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this CoffeeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoffeeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoffeeModelCopyWith<CoffeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeModelCopyWith<$Res> {
  factory $CoffeeModelCopyWith(
    CoffeeModel value,
    $Res Function(CoffeeModel) then,
  ) = _$CoffeeModelCopyWithImpl<$Res, CoffeeModel>;
  @useResult
  $Res call({
    String? id,
    String? title,
    String? description,
    String? category,
    double? pricse,
    String? imageUrl,
  });
}

/// @nodoc
class _$CoffeeModelCopyWithImpl<$Res, $Val extends CoffeeModel>
    implements $CoffeeModelCopyWith<$Res> {
  _$CoffeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoffeeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? pricse = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            category:
                freezed == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as String?,
            pricse:
                freezed == pricse
                    ? _value.pricse
                    : pricse // ignore: cast_nullable_to_non_nullable
                        as double?,
            imageUrl:
                freezed == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoffeeModelImplCopyWith<$Res>
    implements $CoffeeModelCopyWith<$Res> {
  factory _$$CoffeeModelImplCopyWith(
    _$CoffeeModelImpl value,
    $Res Function(_$CoffeeModelImpl) then,
  ) = __$$CoffeeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? title,
    String? description,
    String? category,
    double? pricse,
    String? imageUrl,
  });
}

/// @nodoc
class __$$CoffeeModelImplCopyWithImpl<$Res>
    extends _$CoffeeModelCopyWithImpl<$Res, _$CoffeeModelImpl>
    implements _$$CoffeeModelImplCopyWith<$Res> {
  __$$CoffeeModelImplCopyWithImpl(
    _$CoffeeModelImpl _value,
    $Res Function(_$CoffeeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoffeeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? pricse = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(
      _$CoffeeModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        category:
            freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String?,
        pricse:
            freezed == pricse
                ? _value.pricse
                : pricse // ignore: cast_nullable_to_non_nullable
                    as double?,
        imageUrl:
            freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CoffeeModelImpl implements _CoffeeModel {
  const _$CoffeeModelImpl({
    this.id,
    this.title,
    this.description,
    this.category,
    this.pricse,
    this.imageUrl,
  });

  factory _$CoffeeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoffeeModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? category;
  @override
  final double? pricse;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'CoffeeModel(id: $id, title: $title, description: $description, category: $category, pricse: $pricse, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffeeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.pricse, pricse) || other.pricse == pricse) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    category,
    pricse,
    imageUrl,
  );

  /// Create a copy of CoffeeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffeeModelImplCopyWith<_$CoffeeModelImpl> get copyWith =>
      __$$CoffeeModelImplCopyWithImpl<_$CoffeeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoffeeModelImplToJson(this);
  }
}

abstract class _CoffeeModel implements CoffeeModel {
  const factory _CoffeeModel({
    final String? id,
    final String? title,
    final String? description,
    final String? category,
    final double? pricse,
    final String? imageUrl,
  }) = _$CoffeeModelImpl;

  factory _CoffeeModel.fromJson(Map<String, dynamic> json) =
      _$CoffeeModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get category;
  @override
  double? get pricse;
  @override
  String? get imageUrl;

  /// Create a copy of CoffeeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoffeeModelImplCopyWith<_$CoffeeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
