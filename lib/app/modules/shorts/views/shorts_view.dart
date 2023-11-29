import 'package:mnajem/app/exports.dart';

import '../controllers/shorts_controller.dart';

class ShortsView extends GetView<ShortsController> {
  const ShortsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: const Center(
        child: Text(
          'ShortsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
