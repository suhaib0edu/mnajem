import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/market/views/add_product/add_product.dart';

import '../controllers/market_controller.dart';
import 'filter/filter_market.dart';
import 'slider_product/slider_product.dart';

class MarketView extends GetView<MarketController> {
  const MarketView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: ListView(
        children: [
          AppBarView(
            onTap: () => Get.to(() => const AddProduct()),
          ),
          con([
            const FilterMarket(),
            const SliderProduct(),
          ]),
          section('احدث المنتجات'),
          const SliderProduct(),
          con(
            [
              section('الأكثر طلباً'),
              const SliderProduct(),
            ],
          ),
        ],
      ),
    );
  }

  section(String text) {
    return Row(
      children: [
        const SizedBox(
          width: 8,
        ),
        SuhText(
          text: text,
          fontFamily: 2,
        )
      ],
    );
  }

  con(List<Widget> children) {
    return SuhContainer(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 8),
      radius: 0,
      color: container.withOpacity(0.3),
      child: Column(
        children: children,
      ),
    );
  }
}
