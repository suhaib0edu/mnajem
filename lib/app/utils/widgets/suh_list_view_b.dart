import 'package:flutter/material.dart';

class SuhListViewB extends StatelessWidget {
  final Widget? Function(BuildContext, int) itemBuilder;
  final int? itemCount;
  final bool isHorizontal;
  final double? height;
  final double? width;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  const SuhListViewB({
    super.key,
    required this.itemBuilder,
    this.itemCount,
    this.isHorizontal = false,
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
        children: [Expanded(child: exFun())],
      );
    } else {
      return Column(
        children: [exFun()],
      );
    }
  }

  Widget exFun() {
    return ListView.builder(
      physics: physics,
      shrinkWrap: shrinkWrap,
      scrollDirection: isHorizontal ? Axis.horizontal : Axis.vertical,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
