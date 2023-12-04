import 'package:mnajem/app/exports.dart';
import 'hashtag/hashtag_view.dart';

import '../controllers/explore_controller.dart';
import 'frindes/frindes_view.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: ListView(
        children: [
          AppBarView(),
          HashtagView(),
          FrindesView(),
          FilterView(),
          PostView(),
        ],
      ),
    );
  }
}
