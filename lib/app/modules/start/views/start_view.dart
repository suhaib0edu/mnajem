import 'package:mnajem/app/exports.dart';

import '../controllers/start_controller.dart';

class StartView extends GetView<StartController> {
  const StartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () => Get.offAllNamed(Routes.EXPLORE));
    return SuhScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(logoSVG),
            const Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 40, horizontal: 120),
              child: LinearProgressIndicator(),
            ),
            
          ],
        ),
      ),
    );
  }
}
