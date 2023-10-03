import '../g_index.dart';

getTextStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  int? fontFamily,
}) =>
    TextStyle(
        color: color ?? textColor,
        fontSize: fontSize ?? 13,
        fontWeight: fontWeight,
        fontFamily: fontFamily == null
            ? 'Cairo'
            : fontFamily == 1
                ? 'Almarai'
                : 'Tajawal');
