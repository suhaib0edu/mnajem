import 'package:mnajem/app/exports.dart';

class TopProfile extends StatelessWidget {
  const TopProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SuhContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        SuhText(
                          text: 'المتابعين',
                        ),
                        SuhText(
                          text: '56',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Avatar(
                          size: 60,
                        ),
                        SuhText(
                          text: 'صهيب الطيب',
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SuhText(
                          text: 'المتابعين',
                        ),
                        SuhText(
                          text: '56',
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: Get.width / 2,
                child: const SuhText(
                  text:
                      "اذا كنت ذو راي فكن ذو عزيمة لان عظيم الراي يفسده التردد",
                  fontSize: 12,
                  // color: textColor,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          
      ],
    );
  }
}