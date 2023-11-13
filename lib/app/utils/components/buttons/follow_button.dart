import 'package:mnajem/app/exports.dart';

class FollowButton extends StatelessWidget {
  final void Function()? onPressed;
  const FollowButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SuhTWIButton(
      assetName: followSVG,
      iconSize: 12,
      text: 'متابعة',
      fontSize: 10,
      radius: 7,
      onTap: onPressed,
      bkgColor: backgroundC,
      padding: const EdgeInsets.symmetric(horizontal: 8),
    );
  }
}
