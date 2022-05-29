import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/app/data/models/chat_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/grub_model.dart';
import 'package:flutter_lms_cambaya/app/modules/components/components.dart';
import 'package:flutter_lms_cambaya/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/detail_chat_controller.dart';

class DetailChatView extends GetView<DetailChatController> {
  final loginState = GetStorage();
  final HomeController homeController = Get.find();
  final TextEditingController messageController =
      TextEditingController(text: '');
  GrubModel grubModel = Get.arguments;
  @override
  Widget build(BuildContext context) {
    handleAddMessage() async {
      await controller.inputChat(
          id: grubModel.id.toString(), message: messageController.text);
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: kBackgroundColor2,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: messageController,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Tulis Pesan...',
                          hintStyle: subtitleTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: handleAddMessage,
                  child: Icon(Icons.send, color: kPrimaryColor),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      // return SizedBox();
      return StreamBuilder<List<ChatModel>>(
        stream: controller.getData(grubModel.id.toString()),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              reverse: true,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                children: snapshot.data!
                    .map((ChatModel message) => ChatBubble(
                          isSender: message.from ==
                              homeController.userModel.id.toString(),
                          text: message.message ?? '',
                        ))
                    .toList(),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(grubModel.name.toString()),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: content(),
          ),
          chatInput()
        ],
      ),
    );
  }
}
