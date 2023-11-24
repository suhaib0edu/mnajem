import 'package:mnajem/app/exports.dart';

class Avatar extends StatelessWidget {
  final String? name;
  final bool isVerified;
  final double? size;
  const Avatar({super.key, this.name, this.isVerified = false, this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          name == null ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            SuhContainer(
              height: size ?? 35,
              width: size ?? 35,
              border: Border.all(
                color: baseColor.withOpacity(0.4),
                width: 1.5,
              ),
            ),
            if (isVerified)
              Positioned(
                bottom: 0,
                left: 3,
                child: SvgPicture.asset(
                  verifiedSVG,
                  width: 18,
                ),
              )
          ],
        ),
        if (name != null)
          SuhText(
            text: name,
            fontSize: 12,
            color: textColor1,
          )
      ],
    );
  }
}
