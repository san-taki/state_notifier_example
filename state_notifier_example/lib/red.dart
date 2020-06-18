import 'package:freezed_annotation/freezed_annotation.dart';

part 'red.freezed.dart';
part 'red.g.dart';

//part.g.dartの行、fromJsonの行はJSONとのencode/decodeいらないなら不要です
@freezed
abstract class Red with _$Red {
  const factory Red({int num}) = _Red;

 factory Red.fromJson(Map<String, dynamic> json) => _$RedFromJson(json);
}