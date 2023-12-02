import 'package:mnajem/app/exports.dart';

class FrindesItem extends StatelessWidget {
  const FrindesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SuhContainer(
          height: 60,
          width: 60,
          radius: 20,
          // child: ,
        ),
        SuhText(
          text: 'صديق مقترح',
          color: textColor,
          fontSize: 12,
        )
      ],
    );
  }
}
