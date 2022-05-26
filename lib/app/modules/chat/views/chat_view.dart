import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/app/modules/components/components.dart';
import 'package:flutter_lms_cambaya/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_lms_cambaya/config/config.dart';

import 'package:get/get.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  final HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grub Chat'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(getPropertionateScreenWidht(24)),
          width: double.infinity,
          child: ListView(
            children: homeController.grubModel
                .map(
                  (hasil) => ChatTile(
                    grubModel: hasil,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
