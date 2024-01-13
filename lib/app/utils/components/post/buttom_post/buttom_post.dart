import 'package:mnajem/app/exports.dart';

class ButtomPost extends StatelessWidget {
  final String? likeCount;
  final String? commentCount;
  final String? viewsCount;
  final int date;
  const ButtomPost({
    super.key,
    this.likeCount,
    this.commentCount,
    this.viewsCount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 4,
        ),
        SuhTWIButton(
          assetName: likeSVG,
          text: likeCount,
          iconColor: iconC0lor,
        ),
        const SizedBox(
          width: 3,
        ),
        SuhTWIButton(
          assetName: commentsSVG,
          text: commentCount,
          iconColor: iconC0lor,
        ),
        const SizedBox(
          width: 3,
        ),
        SuhTWIButton(
          assetName: viewsSVG,
          text: viewsCount,
          iconColor: iconC0lor,
        ),
        const Spacer(),
        SuhTWIButton(
          text: DateTime.fromMillisecondsSinceEpoch(date).toDateAndTime(),
          txtColor: textColor2,
          fontSize: 8,
          bkgColor: container,
          padding: const EdgeInsets.symmetric(horizontal: 5),
        ),
        const SuhTWIButton(
          assetName: moreSVG,
          padding: EdgeInsets.zero,
        ),
      ],
    );
  }
}
