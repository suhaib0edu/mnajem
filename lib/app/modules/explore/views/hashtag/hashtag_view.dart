import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/explore/views/hashtag/hashtag_item.dart';

class HashtagView extends GetView {
  const HashtagView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhListViewB(
      itemCount: 8,
      isHorizontal: true,
      height: 48,
      itemBuilder: (context, index) => const HashtagItem(),
    );
  }
}
