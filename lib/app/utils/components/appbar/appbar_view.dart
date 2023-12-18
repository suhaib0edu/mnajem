import 'package:mnajem/app/exports.dart';

class AppBarView extends StatelessWidget {
  final bool withAdd;
  final void Function()? onTap;
  const AppBarView({
    super.key,
    this.withAdd = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SuhContainer(
      height: 50,
      child: Row(
        children: [
          InkWell(
            onTap: onTap,
            child: SuhContainer(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.all(4),
              color: backgroundC.withOpacity(0.5),
              child: Icon(
                withAdd ? Icons.add : Icons.settings,
                color: iconC0lor,
              ),
            ),
          ),
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
