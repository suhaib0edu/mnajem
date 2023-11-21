import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/work/views/work_filter.dart';

class AddJob extends StatelessWidget {
  const AddJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC,
      body: SafeArea(
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SuhText(
                    text: 'اضافة وظيفة',
                  ),
                  SuhButton(
                    child: SuhText(
                      text: 'نشر',
                    ),
                  ),
                ],
              ),
            ),
            SuhTextField(
              hintText: 'عنوان الوظيفة',
            ),
            SuhTextField(
              hintText: 'وصف الوظيفة',
              minLines: 5,
              maxLines: 6,
            ),
            SuhTextField(
              hintText: 'راتب الوظيفة',
            ),
            WorkFilter(),
          ],
        ),
      ),
    );
  }
}
