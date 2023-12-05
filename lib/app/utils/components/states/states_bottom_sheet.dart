import 'package:mnajem/app/exports.dart';

statesBottomSheet({required void Function(int index,List list) onTap}) {
  List<String> statesList = [
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
    'ولاية الخرطوم',
  ];

  suhBottomSheet(
    itemCount: statesList.length,
    itemBuilder: (context, index) => ContainerButton(
      onTap: () {
        onTap(index,statesList);
      },
      color: backgroundC,
      child: SuhText(
        text: statesList[index],
      ),
    ),
  );
}
