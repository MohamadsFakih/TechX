import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_entity.freezed.dart';

@freezed
class MiniItemEntity with _$MiniItemEntity {
  const factory MiniItemEntity({
    @Default('') String id,
    @Default('') String name,
    @Default('') String image,
    @Default('') String price,
    @Default('') String description,
    @Default([]) List<String> imageLinks,
    @Default([]) List<String> models,
    @Default([]) List<String> colors,
    @Default([]) List<String> specifications,
    @Default([]) List<String> likes,
  }) = _MiniItemEntity;

  static String toJson(MiniItemEntity item) {
    Map<String, dynamic> map = {
      'id': item.id,
      'name': item.name,
      'image': item.image,
      'price': item.price,
      'description': item.description,
      'imageLinks': item.imageLinks,
      'models': item.models,
      'colors': item.colors,
      'specifications': item.specifications,
      'likes': item.likes,
    };
    return json.encode(map);
  }
}
