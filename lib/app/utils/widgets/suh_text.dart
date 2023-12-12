import 'package:mnajem/app/exports.dart';

class SuhText extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final int fontFamily;
  const SuhText({
    super.key,
    this.text,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.fontFamily = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fF(),
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color ?? textColor1,
      ),
    );
  }

  String fF() {
    switch (fontFamily) {
      case 1:
        return 'Lateef';
      case 2:
        return 'ElMessiri';
      default:
        return 'Cairo';
    }
  }
}
