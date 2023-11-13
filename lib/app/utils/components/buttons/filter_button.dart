import 'package:mnajem/app/exports.dart';

class FilterButton extends StatelessWidget {
  final void Function()? onTap;
  final String? assetName;
  final String? text;
  final double? radius;
  final double? height;
  final double? fontSize;
  final double? iconSize;
  final Color? iconColor;
  const FilterButton(
      {super.key,
      this.onTap,
      this.assetName,
      this.text,
      this.radius,
      this.height,
      this.fontSize,
      this.iconSize,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return SuhTWIButton(
      assetName: assetName,
      text: text,
      radius: radius ?? 8,
      height: height ?? 30,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      fontSize: fontSize ?? 11,
      iconSize: iconSize ?? 20,
      bkgColor: container,
    );
  }
}
