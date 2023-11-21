import 'package:flutter/cupertino.dart';
import 'package:mnajem/app/exports.dart';
import 'package:mnajem/app/modules/auth/controllers/auth_controller.dart';

class RegisterView extends GetView<AuthController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          section1(),
          section2(),
          const SizedBox(
            height: 40,
          ),
          RegisterButton(
            onPressed: () => controller.goToControl(),
            text: 'أكمل التسجيل',
          ),
        ],
      ),
    );
  }

  Widget section(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: Row(
        children: [
          SuhText(
            text: text,
          ),
          const Expanded(
              child: Divider(
            indent: 15,
            endIndent: 5,
            color: baseColor,
          ))
        ],
      ),
    );
  }

  Widget section1() {
    return Column(
      children: [
        section('البيانات الأساسية'),
        const SuhTextField(
          hintText: 'الاسم الاول',
        ),
        const SuhTextField(
          hintText: 'الاسم الاخير (يمكن ان يكون اكثر من اسم)',
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectButton(
              text: 'ذكر',
              isSelected: true,
            ),
            SizedBox(
              width: 10,
            ),
            SelectButton(
              text: 'انثى',
            ),
          ],
        )
      ],
    );
  }

  Widget section2() {
    return Column(
      children: [
        section('بيانات الحماية و الأمان'),
        const SuhTextField(
          hintText: 'رقم الهانف',
        ),
        const SuhTextField(
          hintText: 'كلمة المرور',
        ),
        section('تاريخ الميلاد'),
        SuhContainer(
          color: baseColor.withOpacity(0.3),
          border: Border.all(color: baseColor),
          height: 150,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: DateTime.now(),
            minimumYear: DateTime.now().year - 150,
            maximumYear: DateTime.now().year,
            onDateTimeChanged: (dT) {
              print(dT);
            },
          ),
        ),
      ],
    );
  }
}
