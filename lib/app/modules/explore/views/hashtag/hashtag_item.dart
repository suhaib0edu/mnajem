import 'package:mnajem/app/exports.dart';

class HashtagItem extends GetView {
  const HashtagItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Center(
        child: SuhTWIButton(
          radius: 8,
          bkgColor: container,
          onTap: () {},
          child: Row(
            children: [
              SuhContainer(
                color: backgroundC,
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(3),
                radius: 6,
                child: Icon(
                  Icons.trending_up_outlined,
                  color: baseColor.withOpacity(0.3),
                  size: 20,
                  textDirection: TextDirection.ltr,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: SuhText(
                  text: 'مثال_لشكل_الهاشتاق',
                  color: textColor,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
