import '../../../exports.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(logoSVG),
            const SizedBox(
              height: 100,
            ),
            const LoginButton(),
            const RegisterButton(),
          ],
        ),
      ),
    );
  }
}
