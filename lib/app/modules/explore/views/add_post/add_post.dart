import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/explore/views/add_post/add_post_controller.dart';
import '../../../../utils/components/post/post_forms/post_forms.dart';

class AddPost extends GetView<AddPostController> {
  const AddPost({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AddPostController());
    return Scaffold(
      backgroundColor: backgroundC,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                GetBuilder<AddPostController>(
                  id: 'PostForms',
                  builder: (ctr) => PostForms(
                    text: ctr.postController.value.text,
                    date: DateTime.now().millisecondsSinceEpoch,
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 14,
                  child: FilterButton(
                    assetName: forYouSVG,
                    text: 'الكل',
                    onTap: () {
                      suhBottomSheet(
                        itemCount: 5,
                        itemBuilder: (context, index) => Column(
                          children: [
                            const Divider(
                              color: Colors.black,
                            ),
                            const SuhText(
                              text: 'الاصدقاء',
                            ),
                            if (index == 4)
                              const Divider(
                                color: Colors.black,
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SuhTextField(
              controller: controller.postController,
              hintText: 'بماذا تفكر ...',
              minLines: 6,
              maxLines: 7,
              onChanged: controller.updatePostForms,
            ),
            llv('هاشتاج'),
            llv('التصنيف'),
            GetBuilder<AddPostController>(
              id: 'viewGallery',
              builder: (ctr) => Column(
                children: [
                  Visibility(
                    visible: controller.viewGallery,
                    child: SuhListViewB(
                      isHorizontal: true,
                      height: 65,
                      itemCount: 8,
                      itemBuilder: (context, index) => const Center(
                        child: SuhContainer(
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        FilterButton(
                          text: controller.viewGallery
                              ? 'إخفاء الصور'
                              : 'اضافة صورة',
                          onTap: () => controller.viewGalleryFun(),
                          assetName: imgPostSVG,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Expanded(
                          child: FilterButton(
                            text: 'نشر',
                            bkgColor: baseColor.withOpacity(0.5),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget llv(String listoftext) => SuhListViewB(
        isHorizontal: true,
        height: 40,
        itemCount: 8,
        itemBuilder: (context, index) => Row(
          children: [
            const SizedBox(
              width: 4,
            ),
            if (index == 0)
              SuhTWIButton(
                padding: const EdgeInsets.all(2),
                assetName: addPostSVG,
                iconSize: 24,
                onTap: () {
                  Get.defaultDialog(
                    title: 'إضافة وسم',
                    titleStyle: const TextStyle(color: textColor2, fontSize: 14),
                    backgroundColor: backgroundC,
                    content: const Column(
                      children: [
                        SuhTextField(
                          hintText: '#وسم_جديد',
                        ),
                      ],
                    ),
                    confirm: ContainerButton(
                      child: const SuhText(
                        text: 'إضافة',
                        fontSize: 14,
                      ),
                      onTap: () {},
                    ),
                  );
                },
              ),
            ContainerButton(
              margin: const EdgeInsets.all(1),
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 4,
              ),
              height: 30,
              child: SuhText(
                text: listoftext,
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
}
