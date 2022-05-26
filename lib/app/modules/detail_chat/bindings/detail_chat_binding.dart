import 'package:get/get.dart';

import '../controllers/detail_chat_controller.dart';

class DetailChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailChatController>(
      () => DetailChatController(),
    );
  }
}
