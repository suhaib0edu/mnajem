import 'package:mnajem/app/exports.dart';

class SuhListViewB extends StatelessWidget {
  final Widget? Function(BuildContext, int) itemBuilder;
  final int? itemCount;
  final bool isHorizontal;
  final bool withExpanded;
  final double? height;
  final double? width;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  const SuhListViewB({
    super.key,
    required this.itemBuilder,
    this.itemCount,
    this.isHorizontal = false,
    this.withExpanded = false,
    this.height,
    this.width,
    this.physics,
    this.shrinkWrap = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: crFun(),
    );
  }

  crFun() {
    if (isHorizontal) {
      return Row(
        children: [Expanded(child: lvFun())],
      );
    } else {
      return Column(
        children: [exFun()],
      );
    }
  }

  Widget exFun() {
    if (withExpanded) {
      return Expanded(child: lvFun());
    }
    return lvFun();
  }

  Widget lvFun() {
    return ListView.builder(
      physics: physics,
      shrinkWrap: shrinkWrap,
      scrollDirection: isHorizontal ? Axis.horizontal : Axis.vertical,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}

suhBottomSheet(
  {int? itemCount,required Widget? Function(BuildContext, int) itemBuilder,}
) {
  Get.bottomSheet(
    SuhContainer(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.zero,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SuhContainer(
                height: 4,
                width: 50,
                margin: EdgeInsets.all(12),
                color: backgroundC,
              )
            ],
          ),
          Expanded(
            child: SuhListViewB(
              itemCount: itemCount,
              withExpanded: true,
              itemBuilder: itemBuilder,
            ),
          )
        ],
      ),
    ),
  );
}
