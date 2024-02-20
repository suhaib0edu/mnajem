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
      padding: EdgeInsets.zero,
      height: 50,
      child: Row(
        children: [
          ContainerButton(
            onTap: onTap,
            color: backgroundC.withOpacity(0.5),
            child: Icon(
              withAdd ? Icons.add : Icons.settings,
              color: iconC0lor,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              logoSVG,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
