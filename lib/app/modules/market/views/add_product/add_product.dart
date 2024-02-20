import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/market/views/filter/filter_market.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

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
                    text: 'اضافة منتج',
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
              hintText: 'اسم المنتج',
            ),
            SuhTextField(
              hintText: 'وصف المنتج',
              minLines: 5,
              maxLines: 6,
            ),
            SuhTextField(
              hintText: 'السعر',
            ),
            FilterMarket(),
          ],
        ),
      ),
    );
  }
}
