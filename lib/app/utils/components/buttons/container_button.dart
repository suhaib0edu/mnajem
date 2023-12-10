import 'package:mnajem/app/exports.dart';

class ContainerButton extends StatelessWidget {
  final void Function()? onTap;
  final Color? color;
  final Widget? child;
  const ContainerButton({
    super.key,
    this.onTap,
    this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 7),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(11),
        child: SuhContainer(
          margin: const EdgeInsets.all(1),
          height: 40,
          color: color,
          child: child,
        ),
      ),
    );
  }
}
