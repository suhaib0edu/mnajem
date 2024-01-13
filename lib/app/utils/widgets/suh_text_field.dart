import '../../exports.dart';

class SuhTextField extends StatelessWidget {
  final String? hintText;
  final int? minLines;
  final int maxLines;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  const SuhTextField({
    super.key,
    this.hintText,
    this.minLines,
    this.maxLines = 1, this.controller, this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SuhContainer(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      border: Border.all(color: baseColor.withOpacity(0.2)),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        minLines: minLines,
        maxLines: maxLines,
        style: const TextStyle(color: textColor2, fontSize: 12),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
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
