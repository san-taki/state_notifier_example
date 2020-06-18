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

  _CounterState call(
      {List<GridItem> items = const [],
      int redCounts = 0,
      int greenCounts = 0}) {
    return _CounterState(
      items: items,
      redCounts: redCounts,
      greenCounts: greenCounts,
    );
  }
}

// ignore: unused_element
const $CounterState = _$CounterStateTearOff();

mixin _$CounterState {
  List<GridItem> get items;
  int get redCounts;
  int get greenCounts;

  Map<String, dynamic> toJson();
  $CounterStateCopyWith<CounterState> get copyWith;
}

abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
  $Res call({List<GridItem> items, int redCounts, int greenCounts});
}

class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;

  @override
  $Res call({
    Object items = freezed,
    Object redCounts = freezed,
    Object greenCounts = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<GridItem>,
      redCounts: redCounts == freezed ? _value.redCounts : redCounts as int,
      greenCounts:
          greenCounts == freezed ? _value.greenCounts : greenCounts as int,
    ));
  }
}

abstract class _$CounterStateCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$CounterStateCopyWith(
          _CounterState value, $Res Function(_CounterState) then) =
      __$CounterStateCopyWithImpl<$Res>;
  @override
  $Res call({List<GridItem> items, int redCounts, int greenCounts});
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
    Object items = freezed,
    Object redCounts = freezed,
    Object greenCounts = freezed,
  }) {
    return _then(_CounterState(
      items: items == freezed ? _value.items : items as List<GridItem>,
      redCounts: redCounts == freezed ? _value.redCounts : redCounts as int,
      greenCounts:
          greenCounts == freezed ? _value.greenCounts : greenCounts as int,
    ));
  }
}

@JsonSerializable()
class _$_CounterState implements _CounterState {
  const _$_CounterState(
      {this.items = const [], this.redCounts = 0, this.greenCounts = 0})
      : assert(items != null),
        assert(redCounts != null),
        assert(greenCounts != null);

  factory _$_CounterState.fromJson(Map<String, dynamic> json) =>
      _$_$_CounterStateFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<GridItem> items;
  @JsonKey(defaultValue: 0)
  @override
  final int redCounts;
  @JsonKey(defaultValue: 0)
  @override
  final int greenCounts;

  @override
  String toString() {
    return 'CounterState(items: $items, redCounts: $redCounts, greenCounts: $greenCounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CounterState &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.redCounts, redCounts) ||
                const DeepCollectionEquality()
                    .equals(other.redCounts, redCounts)) &&
            (identical(other.greenCounts, greenCounts) ||
                const DeepCollectionEquality()
                    .equals(other.greenCounts, greenCounts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(redCounts) ^
      const DeepCollectionEquality().hash(greenCounts);

  @override
  _$CounterStateCopyWith<_CounterState> get copyWith =>
      __$CounterStateCopyWithImpl<_CounterState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CounterStateToJson(this);
  }
}

abstract class _CounterState implements CounterState {
  const factory _CounterState(
      {List<GridItem> items, int redCounts, int greenCounts}) = _$_CounterState;

  factory _CounterState.fromJson(Map<String, dynamic> json) =
      _$_CounterState.fromJson;

  @override
  List<GridItem> get items;
  @override
  int get redCounts;
  @override
  int get greenCounts;
  @override
  _$CounterStateCopyWith<_CounterState> get copyWith;
}
