import 'package:mnajem/app/exports.dart';

class BalanceView extends StatelessWidget {
  const BalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return SuhContainer(
      child: Column(
        children: [
          twoText('رصيد المحفظة الداخلية', '526.00'),
          twoText('رصيد المحفظة الخارجية', '100.000.000.000.000'),
        ],
      ),
    );
  }

  Widget twoText(String t1, String t2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SuhText(
          text: t1,
          color: textColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SuhText(
              text: t2,
              fontSize: 20,
            ),
            const SuhText(
              text: ' ج',
            ),
          ],
        ),
      ],
    );
  }
}
