import 'package:mnajem/app/exports.dart';

class SuhButton extends StatelessWidget {
  final Color? bkgColor;
  final Color? borderSideColor;
  final BorderRadiusGeometry? borderRadius;
  final double? radius;
  final double? elevation;
  final BorderSide? borderSide;
  final void Function()? onPressed;
  final Widget? child;
  const SuhButton({
    super.key,
    this.bkgColor,
    this.borderSideColor,
    this.borderRadius,
    this.radius,
    this.elevation,
    this.borderSide,
    this.onPressed,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: bkgColor ?? baseColor.withOpacity(0.5),
        foregroundColor: borderSideColor?.withOpacity(0.5) ??
            bkgColor?.withOpacity(0.5) ??
            baseColor.withOpacity(0.5),
        side: borderSide ??
            BorderSide(
              color: borderSideColor ?? bkgColor ?? baseColor,
              width: 1,
            ),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 10),
        ),
      ),
      onPressed: onPressed ?? () {},
      child: child,
    );
  }
}
