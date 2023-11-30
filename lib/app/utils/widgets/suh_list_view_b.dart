import 'package:flutter/material.dart';

class SuhListViewB extends StatelessWidget {
  final Widget? Function(BuildContext, int) itemBuilder;
  final int? itemCount;
  final bool isHorizontal;
  final double? height;
  final double? width;
  const SuhListViewB({
    super.key,
    required this.itemBuilder,
    this.itemCount,
    this.isHorizontal = false, this.height, this.width,
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
        children: [exFun()],
      );
    } else {
      return Column(
        children: [exFun()],
      );
    }
  }

  Widget exFun() {
    return Expanded(
      child: ListView.builder(
        itemCount: itemCount,
        scrollDirection: isHorizontal ? Axis.horizontal : Axis.vertical,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
