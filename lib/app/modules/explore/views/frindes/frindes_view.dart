import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/explore/views/frindes/frindes_item.dart';

class FrindesView extends StatelessWidget {
  const FrindesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SuhContainer(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.symmetric(vertical: 8),
      radius: 0,
      color: container.withOpacity(0.1),
      boxShadow: [
        BoxShadow(
          color: shadowC0lor1.withOpacity(0.5),
          blurStyle: BlurStyle.outer,
          blurRadius: 5,
        ),
      ],
      child: Column(
        children: [
          SuhListViewB(
            itemCount: 8,
            isHorizontal: true,
            height: 130,
            itemBuilder: (c, i) => const FrindesItem(),
          ),
        ],
      ),
    );
  }
}
