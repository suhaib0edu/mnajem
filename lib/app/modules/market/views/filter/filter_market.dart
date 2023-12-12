import 'package:mnajem/app/exports.dart';

class FilterMarket extends StatelessWidget {
  const FilterMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            SizedBox(
              width: 8,
            ),
            SuhTWIButton(
              radius: 5,
              padding: EdgeInsets.symmetric(horizontal: 4),
              bkgColor: container,
              child: Row(
                children: [
                  SuhText(
                    text: 'تصفية',
                  ),
                  Icon(
                    Icons.filter_alt_rounded,
                    color: iconC0lor,
                  ),
                ],
              ),
            ),
          ],
        ),
        categoryView(),
      ],
    );
  }

  categoryView() {
    return SuhListViewB(
      isHorizontal: true,
      height: 45,
      itemCount: 10,
      itemBuilder: (c, i) => categoryItem(c, i),
    );
  }

  categoryItem(BuildContext c, int i) {
    return Padding(
      padding: EdgeInsets.only(top: 4, right: i == 0 ? 8.0 : 3, left: 3),
      child: const Column(
        children: [
          FilterButton(
            text: 'اجهزة كهربائية',
          ),
        ],
      ),
    );
  }
}
