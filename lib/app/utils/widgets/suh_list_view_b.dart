import 'package:flutter/material.dart';

class SuhListViewB extends StatelessWidget {
  final Widget? Function(BuildContext, int) itemBuilder;
  final int? itemCount;
  final bool isHorizontal;
  const SuhListViewB({
    super.key,
    required this.itemBuilder,
    this.itemCount,
    this.isHorizontal = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
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
