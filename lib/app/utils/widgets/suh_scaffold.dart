import '../../exports.dart';

class SuhScaffold extends StatelessWidget {
  final Widget body;
  final Widget? drawer;
  const SuhScaffold({super.key, required this.body, this.drawer});
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> sKey = GlobalKey<ScaffoldState>();
    return WillPopScope(
      onWillPop: () async {
        sKey.currentState?.openDrawer();
        return false;
      },
      child: Scaffold(
        key: sKey,
        backgroundColor: backgroundC,
        drawer: drawerFun(),
        body: SafeArea(
          child: body,
        ),
      ),
    );
  }

  drawerFun() {
    return SafeArea(
      child: SuhContainer(
        color: backgroundC,
        width: 70,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        margin: EdgeInsets.zero,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Avatar(
              size: 40,
              onTap: () => Get.offAllNamed(Routes.PROFILE),
            ),
            const MenuButton(
              cHeight: 30,
              cWidth: 55,
              assetName: searchSVG,
            ),
            const SizedBox(
              height: 4,
            ),
            const Divider(
              color: baseColor,
              height: 0.5,
            ),
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  MenuButton(
                    assetName: homeSVG,
                    onTap: () => Get.offAllNamed(Routes.EXPLORE),
                  ),
                  MenuButton(
                    assetName: shortStorySVG,
                    onTap: () => Get.offAllNamed(Routes.SHORTS),
                  ),
                  MenuButton(
                    assetName: workSVG,
                    onTap: () => Get.offAllNamed(Routes.WORK),
                  ),
                  MenuButton(
                    assetName: marketSVG,
                    onTap: () => Get.offAllNamed(Routes.MARKET),
                  ),
                  MenuButton(
                    assetName: walletSVG,
                    onTap: () => Get.offAllNamed(Routes.WALLET),
                  ),
                  MenuButton(
                    assetName: addPostSVG,
                    onTap: () => Get.offAllNamed(Routes.SUHAIB),
                  ),
                ],
              ),
            ),
            const Divider(
              color: baseColor,
              height: 0.5,
            ),
            const SizedBox(
              height: 4,
            ),
            const MenuButton(
              cWidth: double.infinity,
              assetName: logoutSVG,
            ),
          ],
        ),
      ),
    );
  }
}
