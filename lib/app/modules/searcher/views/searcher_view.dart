import 'package:mnajem/app/exports.dart';

import '../controllers/searcher_controller.dart';

class SearcherView extends GetView<SearcherController> {
  const SearcherView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SuhScaffold(
      body: const Center(
        child: Text(
          'SearcherView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
