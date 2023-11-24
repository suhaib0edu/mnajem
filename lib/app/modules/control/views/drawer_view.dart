import 'package:mnajem/app/exports.dart';

class DrawerView extends GetView {
  const DrawerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SuhContainer(
        color: backgroundC,
        width: 70,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        margin: EdgeInsets.zero,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Avatar(
              size: 40,
            ),
            MenuButton(
              cHeight: 30,
              cWidth: 55,
              assetName: searchSVG,
            ),
            SizedBox(
              height: 4,
            ),
            Divider(
              color: baseColor,
              height: 0.5,
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  MenuButton(
                    assetName: homeSVG,
                  ),
                  MenuButton(
                    assetName: shortStorySVG,
                  ),
                  MenuButton(
                    assetName: workSVG,
                  ),
                  MenuButton(
                    assetName: marketSVG,
                  ),
                  MenuButton(
                    assetName: walletSVG,
                  ),
                ],
              ),
            ),
            Divider(
              color: baseColor,
              height: 0.5,
            ),
            SizedBox(
              height: 4,
            ),
            MenuButton(
              cWidth: double.infinity,
              assetName: logoutSVG,
            ),
          ],
        ),
      ),
    );
  }
}
