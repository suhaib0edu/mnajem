import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/auth/controllers/auth_controller.dart';

class LoginView extends GetView<AuthController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SuhTextField(),
        SuhTextField(),
        LoginButton(),
      ],
    );
  }
}
