import 'package:mnajem/app/exports.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilterButton(
            text: 'من اجلك',
            assetName: forYouSVG,
          ),
          FilterButton(
            // text: 'الاصدقاء',
            assetName: frindesSVG,
          ),
          VerticalDivider(
            color: textColor,
            indent: 14,
            endIndent: 14,
          ),
          FilterButton(
            text: 'الكل',
            assetName: textImgPostSVG,
          ),
          FilterButton(
            // text: 'صور',
            assetName: imgPostSVG,
          ),
          FilterButton(
            // text: 'نصوص',
            assetName: textPostSVG,
          ),
        ],
      ),
    );
  }
}
