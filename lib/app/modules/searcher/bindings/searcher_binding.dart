import 'package:get/get.dart';

import '../controllers/searcher_controller.dart';

class SearcherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearcherController>(
      () => SearcherController(),
    );
  }
}
