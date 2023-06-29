import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_entity.freezed.dart';

@freezed
class MiniItemEntity with _$MiniItemEntity {
  const factory MiniItemEntity({
    @Default('') name,
    @Default('') image,
    @Default('') price,
    @Default('') description,
  }) = _MiniItemEntity;
}
