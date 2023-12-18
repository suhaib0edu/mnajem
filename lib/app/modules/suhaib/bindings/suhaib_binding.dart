import 'package:get/get.dart';

import '../controllers/suhaib_controller.dart';

class SuhaibBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuhaibController>(
      () => SuhaibController(),
    );
  }
}
