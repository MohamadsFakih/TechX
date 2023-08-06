import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_entity.freezed.dart';
part 'item_entity.g.dart';

@freezed
class MiniItemEntity with _$MiniItemEntity {
  const factory MiniItemEntity({
    /// The id of the item
    @Default('') String id,

    /// The name of the item
    @Default('') String name,

    /// The cover image of the item
    @Default('') String image,

    /// The price of the item
    @Default('') String price,

    /// The item description
    @Default('') String description,

    /// The images shown in the detailed page
    @Default([]) List<String> imageLinks,

    /// The different models of the item
    @Default([]) List<String> models,

    /// The different colors of the item
    @Default([]) List<String> colors,

    /// The user ids that added a favorite to the item
    @Default([]) List<String> likes,

    /// The specifications to build the table in teh detaield page
    @Default({}) Map<String, String> specifications,
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
