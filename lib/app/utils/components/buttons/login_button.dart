import 'package:mnajem/app/exports.dart';

class LoginButton extends StatelessWidget {
  final void Function()? onPressed;
  const LoginButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SuhButton(
      onPressed: onPressed,
      child: SuhText(
        text: 'تسجيل دخول',
        color: textColor2,
      ),
    );
  }
}
