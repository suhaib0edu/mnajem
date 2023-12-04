import 'package:mnajem/app/exports.dart';

class FilterView extends StatelessWidget {
  final bool isPublic;
  const FilterView({super.key, this.isPublic = true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isPublic)
            const FilterButton(
              text: 'من اجلك',
              assetName: forYouSVG,
            ),
          if (isPublic)
            const FilterButton(
              // text: 'الاصدقاء',
              assetName: frindesSVG,
            ),
          if (isPublic)
            const VerticalDivider(
              color: textColor,
              indent: 14,
              endIndent: 14,
            ),
          const FilterButton(
            text: 'الكل',
            assetName: textImgPostSVG,
          ),
          const FilterButton(
            // text: 'صور',
            assetName: imgPostSVG,
          ),
          const FilterButton(
            // text: 'نصوص',
            assetName: textPostSVG,
          ),
        ],
      ),
    );
  }
}
