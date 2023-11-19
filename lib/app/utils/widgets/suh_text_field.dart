import '../../exports.dart';

class SuhTextField extends StatelessWidget {
  final String? hintText;
  const SuhTextField({super.key, this.hintText});

  @override
  Widget build(BuildContext context) {
    return SuhContainer(
      padding: EdgeInsets.symmetric(horizontal: 8),
      border: Border.all(color: baseColor),
      child: TextField(
        style: TextStyle(color: textColor, fontSize: 12),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: textColor,
            fontSize: 12,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
