import 'package:flutter/material.dart';
import 'package:mnajem/app/utils/components/post/buttom_post/buttom_post.dart';
import 'package:mnajem/app/utils/components/post/top_post/top_post.dart';
import 'package:mnajem/app/utils/theme/colors.dart';
import 'package:mnajem/app/utils/widgets/suh_container.dart';
import 'package:mnajem/app/utils/widgets/suh_text.dart';

class PostForms extends StatelessWidget {
  final String? text;
  final int? date;
  final String? likeCount;
  const PostForms({super.key, this.likeCount, this.text, this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SuhContainer(
          color: container.withOpacity(0.2),
          child: Column(
            children: [
              const TopPost(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: SuhText(
                        text: text ??
                            'لأن تمشي بخطوات صغيرة خيراً من ان تقف في مكانك...',
                        color: textColor,
                        fontFamily: 2,
                        fontSize: text != null
                            ? text!.length > 100
                                ? 12
                                : 14
                            : 13,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ButtomPost(
            likeCount: likeCount,
            date: DateTime.now().millisecondsSinceEpoch,
          ),
        ),
        const SizedBox(
          height: 8,
        )
      ],
    );
  }
}
