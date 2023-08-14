// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MiniItemEntity _$$_MiniItemEntityFromJson(Map<String, dynamic> json) =>
    _$_MiniItemEntity(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      price: json['price'] as String? ?? '',
      description: json['description'] as String? ?? '',
      imageLinks: (json['imageLinks'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      models: (json['models'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      colors: (json['colors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      likes:
          (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      specifications: (json['specifications'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_MiniItemEntityToJson(_$_MiniItemEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'description': instance.description,
      'imageLinks': instance.imageLinks,
      'models': instance.models,
      'colors': instance.colors,
      'likes': instance.likes,
      'specifications': instance.specifications,
    };
