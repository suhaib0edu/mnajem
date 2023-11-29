import 'package:mnajem/app/exports.dart';

import '../controllers/market_controller.dart';

class MarketView extends GetView<MarketController> {
  const MarketView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: const Center(
        child: Text(
          'MarketView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
