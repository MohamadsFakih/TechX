import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_entity.freezed.dart';

@freezed
class MiniItemEntity with _$MiniItemEntity {
  const factory MiniItemEntity({
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
}
