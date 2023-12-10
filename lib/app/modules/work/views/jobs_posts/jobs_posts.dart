import 'package:mnajem/app/exports.dart';

import 'job_post_item.dart';

class JobsPosts extends StatelessWidget {
  const JobsPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return SuhListViewB(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (c, i) => JobPostItem(),
    );
  }
}
