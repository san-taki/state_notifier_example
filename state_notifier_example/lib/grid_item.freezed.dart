// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'grid_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GridItem _$GridItemFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'red':
      return Red.fromJson(json);
    case 'green':
      return Green.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$GridItemTearOff {
  const _$GridItemTearOff();

  Red red([int num]) {
    return Red(
      num,
    );
  }

  Green green([int num]) {
    return Green(
      num,
    );
  }
}

// ignore: unused_element
const $GridItem = _$GridItemTearOff();

mixin _$GridItem {
  int get num;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result red(int num),
    @required Result green(int num),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result red(int num),
    Result green(int num),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result red(Red value),
    @required Result green(Green value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result red(Red value),
    Result green(Green value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $GridItemCopyWith<GridItem> get copyWith;
}

abstract class $GridItemCopyWith<$Res> {
  factory $GridItemCopyWith(GridItem value, $Res Function(GridItem) then) =
      _$GridItemCopyWithImpl<$Res>;
  $Res call({int num});
}

class _$GridItemCopyWithImpl<$Res> implements $GridItemCopyWith<$Res> {
  _$GridItemCopyWithImpl(this._value, this._then);

  final GridItem _value;
  // ignore: unused_field
  final $Res Function(GridItem) _then;

  @override
  $Res call({
    Object num = freezed,
  }) {
    return _then(_value.copyWith(
      num: num == freezed ? _value.num : num as int,
    ));
  }
}

abstract class $RedCopyWith<$Res> implements $GridItemCopyWith<$Res> {
  factory $RedCopyWith(Red value, $Res Function(Red) then) =
      _$RedCopyWithImpl<$Res>;
  @override
  $Res call({int num});
}

class _$RedCopyWithImpl<$Res> extends _$GridItemCopyWithImpl<$Res>
    implements $RedCopyWith<$Res> {
  _$RedCopyWithImpl(Red _value, $Res Function(Red) _then)
      : super(_value, (v) => _then(v as Red));

  @override
  Red get _value => super._value as Red;

  @override
  $Res call({
    Object num = freezed,
  }) {
    return _then(Red(
      num == freezed ? _value.num : num as int,
    ));
  }
}

@JsonSerializable()
class _$Red with DiagnosticableTreeMixin implements Red {
  const _$Red([this.num]);

  factory _$Red.fromJson(Map<String, dynamic> json) => _$_$RedFromJson(json);

  @override
  final int num;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GridItem.red(num: $num)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GridItem.red'))
      ..add(DiagnosticsProperty('num', num));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Red &&
            (identical(other.num, num) ||
                const DeepCollectionEquality().equals(other.num, num)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(num);

  @override
  $RedCopyWith<Red> get copyWith => _$RedCopyWithImpl<Red>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result red(int num),
    @required Result green(int num),
  }) {
    assert(red != null);
    assert(green != null);
    return red(num);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result red(int num),
    Result green(int num),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (red != null) {
      return red(num);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result red(Red value),
    @required Result green(Green value),
  }) {
    assert(red != null);
    assert(green != null);
    return red(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result red(Red value),
    Result green(Green value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (red != null) {
      return red(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RedToJson(this)..['runtimeType'] = 'red';
  }
}

abstract class Red implements GridItem {
  const factory Red([int num]) = _$Red;

  factory Red.fromJson(Map<String, dynamic> json) = _$Red.fromJson;

  @override
  int get num;
  @override
  $RedCopyWith<Red> get copyWith;
}

abstract class $GreenCopyWith<$Res> implements $GridItemCopyWith<$Res> {
  factory $GreenCopyWith(Green value, $Res Function(Green) then) =
      _$GreenCopyWithImpl<$Res>;
  @override
  $Res call({int num});
}

class _$GreenCopyWithImpl<$Res> extends _$GridItemCopyWithImpl<$Res>
    implements $GreenCopyWith<$Res> {
  _$GreenCopyWithImpl(Green _value, $Res Function(Green) _then)
      : super(_value, (v) => _then(v as Green));

  @override
  Green get _value => super._value as Green;

  @override
  $Res call({
    Object num = freezed,
  }) {
    return _then(Green(
      num == freezed ? _value.num : num as int,
    ));
  }
}

@JsonSerializable()
class _$Green with DiagnosticableTreeMixin implements Green {
  const _$Green([this.num]);

  factory _$Green.fromJson(Map<String, dynamic> json) =>
      _$_$GreenFromJson(json);

  @override
  final int num;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GridItem.green(num: $num)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GridItem.green'))
      ..add(DiagnosticsProperty('num', num));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Green &&
            (identical(other.num, num) ||
                const DeepCollectionEquality().equals(other.num, num)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(num);

  @override
  $GreenCopyWith<Green> get copyWith =>
      _$GreenCopyWithImpl<Green>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result red(int num),
    @required Result green(int num),
  }) {
    assert(red != null);
    assert(green != null);
    return green(num);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result red(int num),
    Result green(int num),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (green != null) {
      return green(num);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result red(Red value),
    @required Result green(Green value),
  }) {
    assert(red != null);
    assert(green != null);
    return green(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result red(Red value),
    Result green(Green value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (green != null) {
      return green(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$GreenToJson(this)..['runtimeType'] = 'green';
  }
}

abstract class Green implements GridItem {
  const factory Green([int num]) = _$Green;

  factory Green.fromJson(Map<String, dynamic> json) = _$Green.fromJson;

  @override
  int get num;
  @override
  $GreenCopyWith<Green> get copyWith;
}
