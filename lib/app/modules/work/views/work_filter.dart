import 'package:mnajem/app/exports.dart';
import '../controllers/work_controller.dart';

class WorkFilter extends GetView<WorkController> {
  const WorkFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            selectFun(
              'حدد الولاية',
              onTap: () {
                statesBottomSheet(onTap: controller.selectState);
              },
            ),
            selectFun(
              'حدد النوع',
              onTap: () {
                suhBottomSheet(
                  itemCount: controller.typeList.length,
                  itemBuilder: (c, i) => SuhContainer(
                    height: 40,
                    color: backgroundC,
                    child: SuhText(
                      text: controller.typeList[i],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        selectFun(
          'حدد القسم',
          onTap: () {
            suhBottomSheet(
              itemCount: controller.sectionList.length,
              itemBuilder: (c, i) => Column(
                children: [
                  ContainerButton(
                    color: backgroundC,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SuhText(
                          text: controller.sectionList[i]['الاسم'],
                        ),
                        const Icon(
                          Icons.arrow_drop_down_rounded,
                          color: iconC0lor,
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.sectionList[i]['الفروع'].length,
                    itemBuilder: (c1, i1) => Visibility(
                      child: SuhContainer(
                        margin:
                            const EdgeInsets.symmetric(vertical: 1, horizontal: 16),
                        color: backgroundC.withOpacity(0.4),
                        child: SuhText(
                          text: controller.sectionList[i]['الفروع'][i1],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  selectFun(String text, {void Function()? onTap}) {
    return ContainerButton(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SuhText(
            text: text,
          ),
          const Icon(
            Icons.arrow_drop_down_rounded,
            color: iconC0lor,
          ),
        ],
      ),
    );
  }
}
