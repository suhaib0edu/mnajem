import 'package:mnajem/app/exports.dart';

import '../controllers/work_controller.dart';

class WorkView extends GetView<WorkController> {
  const WorkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: const Center(
        child: Text(
          'WorkView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
