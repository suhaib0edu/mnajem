import 'package:mnajem/app/modules/auth/views/login_view.dart';
import 'package:mnajem/app/modules/auth/views/register_view.dart';

import '../../../exports.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    RxInt _csv = controller.screenView;
    return SuhScaffold(
      body: Center(
        child: GetX(
          init: controller,
          builder: (ctr) => ListView(
            children: [
              SizedBox(
                height: Get.height * .15,
              ),
              SvgPicture.asset(logoSVG),
              SizedBox(
                height: _csv.value == 0 ? Get.height * 0.3 : Get.height * 0.1,
              ),
              if (_csv.value == 0)
                Column(
                  children: [
                    LoginButton(
                      onPressed: () => controller.goToLoginView(),
                    ),
                    RegisterButton(
                      onPressed: () => controller.goToRegisterView(),
                    ),
                  ],
                ),
              SizedBox(
                height: Get.height * .05,
              ),
              if (_csv.value == 1) const LoginView(),
              if (_csv.value == 2) const RegisterView(),
              SizedBox(
                height: 15,
              ),
              if (_csv.value != 0)
                Align(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SuhText(
                        text: 'الصفحة الرئيسية',
                      ),
                    ),
                    onTap: () => controller.backToAuth(),
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
