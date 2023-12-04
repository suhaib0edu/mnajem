import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/utils/components/post/post_forms/post_forms.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return SuhListViewB(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) => const PostForms(),
    );
  }
}
