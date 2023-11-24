import 'package:mnajem/app/exports.dart';

class SuhTWIButton extends StatelessWidget {
  final void Function()? onTap;
  final String? assetName;
  final String? text;
  final double? radius;
  final double? cHeight;
  final double? cWidth;
  final double? fontSize;
  final double? iconSize;
  final Color? iconColor;
  final Color? txtColor;
  final Color? bkgColor;
  final EdgeInsetsGeometry? padding;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  const SuhTWIButton({
    super.key,
    this.onTap,
    this.assetName,
    this.text,
    this.radius,
    this.cHeight,
    this.cWidth,
    this.fontSize,
    this.iconSize,
    this.iconColor,
    this.txtColor,
    this.bkgColor,
    this.padding,
    this.boxShadow,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(radius ?? 20),
      child: SuhContainer(
        height: cHeight,
        width: cWidth,
        margin: const EdgeInsets.all(1),
        padding: padding ?? const EdgeInsets.all(0),
        radius: radius ?? 20,
        color: bkgColor ?? Colors.transparent,
        boxShadow: boxShadow,
        child: child ??
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (assetName != null)
                  SvgPicture.asset(
                    assetName ?? '',
                    width: iconSize ?? 16,
                    color: iconColor,
                  ),
                if (text != null && assetName != null)
                  const SizedBox(
                    width: 4,
                  ),
                if (text != null)
                  SuhText(
                    text: text ?? '',
                    color: txtColor ?? textColor,
                    fontSize: fontSize ?? 9,
                  ),
              ],
            ),
      ),
    );
  }
}
