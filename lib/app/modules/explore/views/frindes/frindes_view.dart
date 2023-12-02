import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/explore/views/frindes/frindes_item.dart';

class FrindesView extends StatelessWidget {
  const FrindesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SuhContainer(
      padding: const EdgeInsets.symmetric(vertical: 8),
      color: backgroundC,
      boxShadow: [
        BoxShadow(
          color: shadowC0lor1.withOpacity(0.5),
          blurStyle: BlurStyle.outer,
          blurRadius: 5,
          spreadRadius: 0.5,
        ),
      ],
      child: Column(
        children: [
          SuhListViewB(
            itemCount: 8,
            isHorizontal: true,
            height: 92,
            itemBuilder: (c, i) => const FrindesItem(),
          ),
        ],
      ),
    );
  }
}
