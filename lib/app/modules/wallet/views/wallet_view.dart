import 'package:mnajem/app/exports.dart';
import '../controllers/wallet_controller.dart';
import 'balance_view.dart';
import 'transfers_view.dart';

class WalletView extends GetView<WalletController> {
  const WalletView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: ListView(
        children: [
          const SuhContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SuhText(
                  text: 'رقم حسابك',
                ),
                SuhText(
                  text: '2398567',
                  fontSize: 20,
                ),
                Avatar(),
              ],
            ),
          ),
          const BalanceView(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bankButton(
                'شحن المحفظة',
                const Color.fromARGB(255, 27, 94, 32),
              ),
              bankButton(
                'تحويل خارحي',
                const Color.fromARGB(255, 158, 73, 27),
              ),
            ],
          ),
          bankButton(
            'تحويل لحساب آخر',
            const Color.fromARGB(255, 23, 76, 119),
          ),
          const TransfersView(),
        ],
      ),
    );
  }

  Widget bankButton(String? text, Color? color) {
    return ContainerButton(
      color: color,
      child: Center(
        child: SuhText(
          text: text,
        ),
      ),
    );
  }
}
