import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/profile/views/top_profile.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: ListView(
        children: const [
          AppBarView(),
          TopProfile(),
          FilterView(
            isPublic: false,
          ),
          PostView(),
        ],
      ),
    );
  }
}
