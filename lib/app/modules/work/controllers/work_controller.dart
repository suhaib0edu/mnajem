import 'package:get/get.dart';

class WorkController extends GetxController {
  //TODO: Implement WorkController

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

  selectState(int i, List l) {
    print('index=> $i');
  }

  List<String> typeList = [
    'الكل',
    'المفضلة',
    'منشوراتي',
    'نشطة',
    'غير نشطة',
  ];

  List<Map> sectionList = [
    {'الاسم':'التصميم والابداع','الفروع':[
      'تصميم شعارات',
      'تصميم شعارات',
      'تصميم شعارات',
      'تصميم شعارات',
    ]},
  ]    ;
}
