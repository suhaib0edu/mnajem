import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/control_controller.dart';

class ControlView extends GetView<ControlController> {
  const ControlView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ControlView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ControlView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
