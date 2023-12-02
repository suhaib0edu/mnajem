import 'package:mnajem/app/exports.dart';

class SuhText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  const SuhText(
      {super.key, this.text, this.fontSize, this.fontWeight, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: TextStyle(
        fontFamily: 'Cairo',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color ?? textColor1,
      ),
    );
  }
}
