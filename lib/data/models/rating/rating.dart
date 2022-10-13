import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_demo/domain/entities/rating_entity.dart';

part 'rating.freezed.dart';
part 'rating.g.dart';

@freezed
class Rating with _$Rating implements RatingEntity {
  const factory Rating({
    required double rate,
    required int count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, Object?> json) => _$RatingFromJson(json);
}
