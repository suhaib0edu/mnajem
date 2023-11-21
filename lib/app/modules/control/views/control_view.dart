import 'package:mnajem/app/exports.dart';
import '../views/drawer_view.dart';

import '../controllers/control_controller.dart';

class ControlView extends GetView<ControlController> {
  const ControlView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SuhScaffold(
      drawer: DrawerView(),
      body: Center(
        child: Text(
          'ControlView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
