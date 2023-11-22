import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/shorts/views/add_video/add_video.dart';

import '../controllers/shorts_controller.dart';

class ShortsView extends GetView<ShortsController> {
  const ShortsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (c, i) => Stack(
              children: [
                const Positioned(
                  top: 8,
                  bottom: 8,
                  right: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Avatar(),
                      SizedBox(
                        height: 10,
                      ),
                      SuhTWIButton(
                        assetName: likeSVG,
                        iconSize: 20,
                        text: '120',
                        isVertical: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SuhTWIButton(
                        assetName: commentsSVG,
                        iconSize: 20,
                        text: '120',
                        isVertical: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SuhTWIButton(
                        assetName: viewsSVG,
                        iconSize: 20,
                        text: '120',
                        isVertical: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SuhTWIButton(
                        padding: EdgeInsets.zero,
                        child: Icon(
                          Icons.more_horiz,
                          color: iconC0lor,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: SuhContainer(
                    height: 120,
                    margin: EdgeInsets.zero,
                    color: container.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            right: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilterButton(
                  assetName: addPostSVG,
                  bkgColor: container.withOpacity(0.4),
                  onTap: () => Get.to(() => const AddVideo()),
                ),
                SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      color: iconC0lor.withOpacity(0.7),
                      width: 10,
                    )),
                FilterButton(
                  assetName: forYouSVG,
                  text: 'من اجلك',
                  bkgColor: container.withOpacity(0.4),
                ),
                FilterButton(
                  assetName: frindesSVG,
                  text: '',
                  bkgColor: container.withOpacity(0.4),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
