// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CounterState _$_$_CounterStateFromJson(Map<String, dynamic> json) {
  return _$_CounterState(
    items: (json['items'] as List)
            ?.map((e) =>
                e == null ? null : GridItem.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    redCounts: json['redCounts'] as int ?? 0,
    greenCounts: json['greenCounts'] as int ?? 0,
  );
}

Map<String, dynamic> _$_$_CounterStateToJson(_$_CounterState instance) =>
    <String, dynamic>{
      'items': instance.items,
      'redCounts': instance.redCounts,
      'greenCounts': instance.greenCounts,
    };