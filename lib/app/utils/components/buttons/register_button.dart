import 'package:mnajem/app/exports.dart';

class RegisterButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  const RegisterButton({super.key, this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return SuhButton(
      bkgColor: Colors.transparent,
      borderSideColor: baseColor.withOpacity(0.5),
      onPressed: onPressed,
      child: SuhText(
        text: text ?? 'إنشاء حساب جديد',
        color: baseColor,
      ),
    );
  }
}
