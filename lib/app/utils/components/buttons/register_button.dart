import 'package:mnajem/app/exports.dart';

class RegisterButton extends StatelessWidget {
  final void Function()? onPressed;
  const RegisterButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SuhButton(
      bkgColor: Colors.transparent,
      borderSideColor: baseColor.withOpacity(0.5),
      onPressed: onPressed,
      child: const SuhText(
        text: 'إنشاء حساب جديد',
        color: baseColor,
      ),
    );
  }
}
