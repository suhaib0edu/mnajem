import 'package:mnajem/app/exports.dart';

class FollowButton extends StatelessWidget {
  final void Function()? onPressed;
  final bool withText;
  const FollowButton({super.key, this.onPressed, this.withText = true});

  @override
  Widget build(BuildContext context) {
    return SuhTWIButton(
      assetName: followSVG,
      iconColor: iconC0lor,
      iconSize: 12,
      text: withText ? 'متابعة' : null,
      fontSize: 10,
      radius: 12,
      onTap: onPressed,
      bkgColor: shadowC0lor1.withOpacity(0.5),
      padding: EdgeInsets.symmetric(
          horizontal: withText ? 6 : 4, vertical: withText ? 0 : 4),
    );
  }
}
