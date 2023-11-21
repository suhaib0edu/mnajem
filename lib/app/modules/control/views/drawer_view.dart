import 'package:mnajem/app/exports.dart';

class DrawerView extends GetView {
  const DrawerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SuhContainer(
          width: 70,
          margin: EdgeInsets.zero,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          child: Column(
            children: [],
          ),
        ),
      );
  }
}
