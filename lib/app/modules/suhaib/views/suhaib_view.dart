import 'package:mnajem/app/exports.dart';

import '../controllers/suhaib_controller.dart';

class SuhaibView extends GetView<SuhaibController> {
  const SuhaibView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: ListView(
        children: [
          AppBarView(),
          cnt(SuhButton(
            child: SuhText(
              text: 'SuhButton',
            ),
          )),
          cnt(SuhContainer(
            child: SuhText(
              text: 'SuhContainer',
            ),
          )),
          SuhDividerWithText('SuhDividerWithText'),
          SuhTWIButton(
            text: 'SuhTWIButton',
            assetName: likeFillSVG,
          ),
          SuhTextField(
            hintText: 'SuhTextField',
          ),
          cnt(SuhText(
            text: 'SuhText',
          )),
          Avatar(),
          Avatar(
            name: 'Avatar-name',
          ),
          cnt(RegisterButton()),
          cnt(LoginButton()),
          cnt(ContainerButton(
            onTap: () {
              statesBottomSheet(onTap: ((index, list) {}));
            },
            child: SuhText(
              text: 'ContainerButton',
            ),
          )),
          cnt(FilterButton(
            assetName: imgPostSVG,
            text: 'FilterButton',
          )),
          cnt(FollowButton()),
          cnt(
            FollowButton(withText: false),
          ),
          cnt(
            MenuButton(assetName: homeSVG),
          ),
          cnt(SelectButton(text: 'SelectButton')),
          FilterView(),
          FilterView(
            isPublic: false,
          ),
          PostView(),
        ],
      ),
    );
  }
}

cnt(Widget? child) {
  return Center(
    child: child,
  );
}
