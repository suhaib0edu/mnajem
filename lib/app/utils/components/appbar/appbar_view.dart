import 'package:mnajem/app/exports.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SuhContainer(
      height: 50,
      child: Row(
        children: [
          const Spacer(),
          SvgPicture.asset(
            logoSVG,
            height: 30,
          ),
        ],
      ),
    );
  }
}
