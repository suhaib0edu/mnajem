import 'package:mnajem/app/exports.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SuhContainer(
          height: 180,
          width: 180,
        ),
        SizedBox(
          width: 190,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const SuhText(
                  text: '120.000 ج',
                  fontWeight: FontWeight.bold,
                ),
                const Spacer(),
                SuhText(
                  text: '4.5',
                  color: iconC0lor.withOpacity(0.7),
                ),
                Icon(
                  Icons.star_rate_rounded,
                  color: iconC0lor.withOpacity(0.6),
                  size: 16,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
