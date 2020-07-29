import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grid_item.freezed.dart';

@freezed
abstract class GridItem with _$GridItem {
  const factory GridItem.red([int num]) = _Red;
  const factory GridItem.green([int num]) = _Green;
}
