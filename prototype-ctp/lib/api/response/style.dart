
import 'dart:ui';

import 'package:ctp_mobile/util/color_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'style.freezed.dart';
part 'style.g.dart';

@freezed
class StyleInfo with _$StyleInfo {
  const factory StyleInfo({
    required ColorsInfo colors,
  }) = _StyleInfo;

  factory StyleInfo.fromJson(Map<String, dynamic> json) => _$StyleInfoFromJson(json);

  Color color({required bool forBool}) {
    return HexColor.fromHex(forBool ? colors.positve : colors.negative);
  }

  const StyleInfo._();
}

@freezed
class ColorsInfo with _$ColorsInfo {
  const factory ColorsInfo({
    required String positve,
    required String negative,
  }) = _ColorsInfo;

  factory ColorsInfo.fromJson(Map<String, dynamic> json) => _$ColorsInfoFromJson(json);
}