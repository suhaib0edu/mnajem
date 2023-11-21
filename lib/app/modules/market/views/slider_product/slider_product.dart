import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/market/views/product/product_item.dart';

class SliderProduct extends StatelessWidget {
  const SliderProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SuhListViewB(
      isHorizontal: true,
      height: 240,
      itemCount: 10,
      itemBuilder: (c, i) => const ProductItem(),
    );
  }
}
