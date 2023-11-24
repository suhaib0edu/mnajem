import 'package:mnajem/app/exports.dart';

class SuhContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final double? radius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  const SuhContainer({
    super.key,
    this.height,
    this.width,
    this.color,
    this.padding,
    this.margin,
    this.borderRadius,
    this.radius,
    this.border,
    this.boxShadow,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding ?? const EdgeInsets.all(8),
      margin: margin ?? const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: color ?? container,
        border: border,
        borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 10),
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }
}
