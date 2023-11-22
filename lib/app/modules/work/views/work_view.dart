import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/work/views/add_job/add_job.dart';
import 'package:mnajem/app/modules/work/views/work_filter.dart';

import '../controllers/work_controller.dart';
import 'jobs_posts/jobs_posts.dart';

class WorkView extends GetView<WorkController> {
  const WorkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: ListView(
        children: [
          AppBarView(
            onTap: () => Get.to(() => const AddJob()),
          ),
          const WorkFilter(),
          const JobsPosts(),
        ],
      ),
    );
  }
}
