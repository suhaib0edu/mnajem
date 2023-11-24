import 'package:mnajem/app/exports.dart';

class MenuButton extends StatelessWidget {
  final bool isSelected;
  final void Function()? onTap;
  final String? assetName;
  final double? cHeight;
  final double? cWidth;
  const MenuButton({
    super.key,
    this.isSelected = false,
    this.onTap,
    this.assetName,
    this.cHeight,
    this.cWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SuhTWIButton(
        cHeight: cHeight ?? 40,
        cWidth: cWidth ?? 45,
        bkgColor: container.withOpacity(0.7),
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(1, 1),
        //     color: shadowC0lor.withOpacity(0.6),
        //   ),
        //   BoxShadow(
        //     offset: Offset(-1, -1),
        //     color: shadowC0lor1.withOpacity(0.6),
        //   ),
        // ],
        onTap: onTap,
        assetName: assetName,
        iconSize: 21,
      ),
    );
  }
}
