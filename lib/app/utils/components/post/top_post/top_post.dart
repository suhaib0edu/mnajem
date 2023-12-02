import 'package:mnajem/app/exports.dart';

class TopPost extends StatelessWidget {
  const TopPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Avatar(
          name: 'صهيب الطيب',
          isVerified: true,
        ),
        SizedBox(
          width: 6,
        ),
        FollowButton(
          withText: false,
        ),
      ],
    );
  }
}
