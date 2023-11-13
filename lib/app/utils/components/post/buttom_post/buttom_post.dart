import 'package:mnajem/app/exports.dart';

class ButtomPost extends StatelessWidget {
  final String? likeCount;
  final String? commentCount;
  final String? viewsCount;
  const ButtomPost({
    super.key,
    this.likeCount,
    this.commentCount,
    this.viewsCount,
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
        const SuhTWIButton(
          text: '04/11/2023',
          txtColor: textColor2,
          fontSize: 8,
          bkgColor: container,
          padding: EdgeInsets.symmetric(horizontal: 5),
        ),
        const SuhTWIButton(
          assetName: moreSVG,
          padding: EdgeInsets.zero,
        ),
      ],
    );
  }
}
