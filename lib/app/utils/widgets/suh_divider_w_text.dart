import 'package:mnajem/app/exports.dart';

class SuhDividerWithText extends StatelessWidget {
  final String st;
  const SuhDividerWithText(
    this.st, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          SuhText(
            text: st,
            fontSize: 16,
            color: textColor1,
          ),
          const Expanded(
            child: Divider(
              indent: 8,
              color: container2,
              endIndent: 3,
            ),
          ),
        ],
      ),
    );
  }
}
