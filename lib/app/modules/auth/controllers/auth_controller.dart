import 'package:get/get.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController
  RxInt screenView = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

    backToAuth() {
    screenView.value = 0;
    update();
  }

  goToLoginView() {
    screenView.value = 1;
    update();
    print(screenView.value);
  }

  goToRegisterView() {
        screenView.value = 2;
    update();
    print(screenView.value);
  }

  goToControl(){
    
  }

}
