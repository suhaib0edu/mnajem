import '../../core/g_index.dart';

class SuhContainer extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final Color? cBackgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  const SuhContainer(
      {super.key,
      this.margin,
      this.padding,
      this.height,
      this.width,
      this.cBackgroundColor,
      this.borderRadius,
      this.border,
      this.boxShadow});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      padding: padding ?? const EdgeInsets.all(8),
      height: height ?? 40,
      width: width,
      decoration: BoxDecoration(
        color: cBackgroundColor ?? backgroundColor,
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        border: border,
        boxShadow: boxShadow ??
            [
              const BoxShadow(
                color: baseColor,
                blurRadius: 2,
              ),
            ],
      ),
    );
  }
}
