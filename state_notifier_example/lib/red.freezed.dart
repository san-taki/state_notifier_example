// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'red.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Red _$RedFromJson(Map<String, dynamic> json) {
  return _Red.fromJson(json);
}

class _$RedTearOff {
  const _$RedTearOff();

  _Red call({int num}) {
    return _Red(
      num: num,
    );
  }
}

// ignore: unused_element
const $Red = _$RedTearOff();

mixin _$Red {
  int get num;

  Map<String, dynamic> toJson();
  $RedCopyWith<Red> get copyWith;
}

abstract class $RedCopyWith<$Res> {
  factory $RedCopyWith(Red value, $Res Function(Red) then) =
      _$RedCopyWithImpl<$Res>;
  $Res call({int num});
}

class _$RedCopyWithImpl<$Res> implements $RedCopyWith<$Res> {
  _$RedCopyWithImpl(this._value, this._then);

  final Red _value;
  // ignore: unused_field
  final $Res Function(Red) _then;

  @override
  $Res call({
    Object num = freezed,
  }) {
    return _then(_value.copyWith(
      num: num == freezed ? _value.num : num as int,
    ));
  }
}

abstract class _$RedCopyWith<$Res> implements $RedCopyWith<$Res> {
  factory _$RedCopyWith(_Red value, $Res Function(_Red) then) =
      __$RedCopyWithImpl<$Res>;
  @override
  $Res call({int num});
}

class __$RedCopyWithImpl<$Res> extends _$RedCopyWithImpl<$Res>
    implements _$RedCopyWith<$Res> {
  __$RedCopyWithImpl(_Red _value, $Res Function(_Red) _then)
      : super(_value, (v) => _then(v as _Red));

  @override
  _Red get _value => super._value as _Red;

  @override
  $Res call({
    Object num = freezed,
  }) {
    return _then(_Red(
      num: num == freezed ? _value.num : num as int,
    ));
  }
}

@JsonSerializable()
class _$_Red implements _Red {
  const _$_Red({this.num});

  factory _$_Red.fromJson(Map<String, dynamic> json) => _$_$_RedFromJson(json);

  @override
  final int num;

  @override
  String toString() {
    return 'Red(num: $num)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Red &&
            (identical(other.num, num) ||
                const DeepCollectionEquality().equals(other.num, num)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(num);

  @override
  _$RedCopyWith<_Red> get copyWith =>
      __$RedCopyWithImpl<_Red>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RedToJson(this);
  }
}

abstract class _Red implements Red {
  const factory _Red({int num}) = _$_Red;

  factory _Red.fromJson(Map<String, dynamic> json) = _$_Red.fromJson;

  @override
  int get num;
  @override
  _$RedCopyWith<_Red> get copyWith;
}
