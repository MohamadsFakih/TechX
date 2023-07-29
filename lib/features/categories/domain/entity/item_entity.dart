import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_entity.freezed.dart';
part 'item_entity.g.dart';

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

  factory MiniItemEntity.fromJson(Map<String, dynamic> json) =>
      _$MiniItemEntityFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'price': price,
      'description': description,
      'imageLinks': imageLinks,
      'models': models,
      'colors': colors,
      'specifications': specifications,
      'likes': likes,
    };
  }
}
