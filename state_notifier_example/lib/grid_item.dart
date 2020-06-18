import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grid_item.freezed.dart';

part 'grid_item.g.dart';

@freezed
abstract class GridItem with _$GridItem {
  const factory GridItem.red([int num]) = Red;

  const factory GridItem.green([int num]) = Green;

  factory GridItem.fromJson(Map<String, dynamic> json) =>
      _$GridItemFromJson(json);
}
