import 'package:mnajem/app/exports.dart';

class JobPostItem extends StatelessWidget {
  const JobPostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SuhContainer(
      child: Column(
        children: [
          SuhContainer(
            color: backgroundC,
            margin: EdgeInsets.zero,
            child: Row(
              children: [
                SuhText(
                  text: "ولاية الخرطوم",
                ),
                Spacer(),
                SuhText(
                  text: "7.000 جنيه",
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SuhText(
                  text:
                      "عنوان الوظيفة ، قد يكون العنوان طويل و يمكن ان يصل الي هذا الحد ",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                SuhText(
                  text:
                      "وصف تفصيلي للوظيفة التي يتم الاعلان عنها ، هنا توجد جميع التفاصيل المتعلقة بالوظيفة المعلن عنها حاليا و هذا اختبار لشكل الخط و درجة اللون و الحجم",
                ),
              ],
            ),
          ),
          SuhContainer(
            color: backgroundC.withOpacity(0.5),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            margin: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SuhText(
                  text: "عرض المزيد",
                  color: baseColor,
                ),
                Icon(
                  Icons.arrow_right_rounded,
                  color: baseColor.withOpacity(0.7),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
