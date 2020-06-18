// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'counter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CounterState _$CounterStateFromJson(Map<String, dynamic> json) {
  return _CounterState.fromJson(json);
}

class _$CounterStateTearOff {
  const _$CounterStateTearOff();

  _CounterState call({int count = 0, List<Red> items = const []}) {
    return _CounterState(
      count: count,
      items: items,
    );
  }
}

// ignore: unused_element
const $CounterState = _$CounterStateTearOff();

mixin _$CounterState {
  int get count;
  List<Red> get items;

  Map<String, dynamic> toJson();
  $CounterStateCopyWith<CounterState> get copyWith;
}

abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
  $Res call({int count, List<Red> items});
}

class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;

  @override
  $Res call({
    Object count = freezed,
    Object items = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      items: items == freezed ? _value.items : items as List<Red>,
    ));
  }
}

abstract class _$CounterStateCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$CounterStateCopyWith(
          _CounterState value, $Res Function(_CounterState) then) =
      __$CounterStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, List<Red> items});
}

class __$CounterStateCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res>
    implements _$CounterStateCopyWith<$Res> {
  __$CounterStateCopyWithImpl(
      _CounterState _value, $Res Function(_CounterState) _then)
      : super(_value, (v) => _then(v as _CounterState));

  @override
  _CounterState get _value => super._value as _CounterState;

  @override
  $Res call({
    Object count = freezed,
    Object items = freezed,
  }) {
    return _then(_CounterState(
      count: count == freezed ? _value.count : count as int,
      items: items == freezed ? _value.items : items as List<Red>,
    ));
  }
}

@JsonSerializable()
class _$_CounterState implements _CounterState {
  const _$_CounterState({this.count = 0, this.items = const []})
      : assert(count != null),
        assert(items != null);

  factory _$_CounterState.fromJson(Map<String, dynamic> json) =>
      _$_$_CounterStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: const [])
  @override
  final List<Red> items;

  @override
  String toString() {
    return 'CounterState(count: $count, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CounterState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items);

  @override
  _$CounterStateCopyWith<_CounterState> get copyWith =>
      __$CounterStateCopyWithImpl<_CounterState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CounterStateToJson(this);
  }
}

abstract class _CounterState implements CounterState {
  const factory _CounterState({int count, List<Red> items}) = _$_CounterState;

  factory _CounterState.fromJson(Map<String, dynamic> json) =
      _$_CounterState.fromJson;

  @override
  int get count;
  @override
  List<Red> get items;
  @override
  _$CounterStateCopyWith<_CounterState> get copyWith;
}
