import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/utils/components/buttons/filter_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: ListView(
        children: [
          LoginButton(),
          Center(child: RegisterButton()),
          Center(
              child: FilterButton(
            assetName: forYouSVG,
            text: 'من اجلك',
          )),
          PostForms(
            likeCount: '5',
          ),
          PostForms(
            likeCount: '32',
          ),
          PostForms(
            likeCount: '49',
          ),
        ],
      ),
    );
  }
}
