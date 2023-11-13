import 'package:flutter/material.dart';
import 'package:mnajem/app/utils/components/post/buttom_post/buttom_post.dart';
import 'package:mnajem/app/utils/components/post/top_post/top_post.dart';
import 'package:mnajem/app/utils/widgets/suh_container.dart';
import 'package:mnajem/app/utils/widgets/suh_text.dart';

class PostForms extends StatelessWidget {
  final String? likeCount;
  const PostForms({super.key, this.likeCount});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SuhContainer(
        child: Column(
          children: [
            TopPost(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Row(
                children: [
                  SuhText(
                    text: 'لأن تمشي بخطوات صغيرة خيراً من ان تقف في مكانك...',
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ButtomPost(
          likeCount: likeCount,
        ),
      ),
    ]);
  }
}
