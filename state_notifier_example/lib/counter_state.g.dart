// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CounterState _$_$_CounterStateFromJson(Map<String, dynamic> json) {
  return _$_CounterState(
    count: json['count'] as int ?? 0,
    items: (json['items'] as List)
            ?.map((e) =>
                e == null ? null : Red.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_CounterStateToJson(_$_CounterState instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items,
    };
