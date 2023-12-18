import 'package:mnajem/app/exports.dart';

class TransfersView extends StatelessWidget {
  const TransfersView({super.key});

  @override
  Widget build(BuildContext context) {
    return SuhContainer(
      child: Column(
        children: [
          const SuhText(
            text: 'أخر حسابات تم التحويل إليها',
          ),
          SuhListViewB(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (context, index) => Column(
              children: [
                Divider(
                  color: iconC0lor,
                ),
                Row(
                  children: [
                    const Avatar(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SuhText(
                          text: 'صهيب - 2346458',
                          fontSize: 13,
                        ),
                        SuhText(
                          text: 'رقم العملية - 744158415614',
                          fontSize: 11,
                          color: textColor,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        SuhText(
                          text: '462.462.871.672 ج',
                          fontSize: 12,
                          fontFamily: 2,
                          color: Colors.red /* Colors.green*/,
                        ),
                        SuhText(
                          text: '15/12/2023',
                          fontSize: 11,
                          color: textColor,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
