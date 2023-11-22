import 'package:mnajem/app/exports.dart';

class AddVideo extends StatelessWidget {
  const AddVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SuhText(
                    text: 'اضافة فيديو',
                  ),
                  SuhButton(
                    child: SuhText(
                      text: 'نشر',
                    ),
                  ),
                ],
              ),
            ),
            const SuhTextField(
              hintText: 'اضف وصف للفيديو',
              minLines: 5,
              maxLines: 6,
            ),
            const SuhText(
              text: 'مقاطع الفيديو',
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SuhContainer(
                      height: Get.width / 5,
                      width: Get.width / 5,
                    ),
                    SuhContainer(
                      height: Get.width / 5,
                      width: Get.width / 5,
                    ),
                    SuhContainer(
                      height: Get.width / 5,
                      width: Get.width / 5,
                    ),
                    SuhContainer(
                      height: Get.width / 5,
                      width: Get.width / 5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
