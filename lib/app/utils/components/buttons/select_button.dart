import '../../../exports.dart';

class SelectButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  const SelectButton({super.key, required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return SuhButton(
      bkgColor: Colors.transparent,
      borderSideColor: baseColor.withOpacity(0.5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SuhContainer(
            height: 20,
            width: 20,
            margin: EdgeInsets.only(left: 4),
            padding: EdgeInsets.zero,
            border: Border.all(color: textColor1, width: 2),
            color: isSelected ? baseColor.withOpacity(0.7) : null,
          ),
          SuhText(
            text: text,
          ),
        ],
      ),
    );
  }
}
