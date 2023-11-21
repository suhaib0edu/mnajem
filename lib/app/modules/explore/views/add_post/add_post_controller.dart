import 'package:mnajem/app/exports.dart';

class AddPostController extends GetxController {
  TextEditingController postController = TextEditingController();
  bool viewGallery = false;
  bool viewSearchHashtag = false;

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

  void updatePostForms(String value) {
    postController.text = value;
    update(['PostForms']);
  }

  void viewGalleryFun() {
    viewGallery = !viewGallery;
    update(['viewGallery']);
  }

  void viewSearchHashtagFun() {
    viewSearchHashtag = !viewSearchHashtag;
    update(['viewSearchHashtag']);
  }
}
