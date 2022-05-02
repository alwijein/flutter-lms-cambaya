import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lapor_controller.dart';

class LaporView extends GetView<LaporController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LaporView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LaporView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
