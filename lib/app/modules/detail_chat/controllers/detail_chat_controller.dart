import 'package:flutter_lms_cambaya/app/data/models/chat_model.dart';
import 'package:flutter_lms_cambaya/app/data/services/services.dart';
import 'package:get/get.dart';

class DetailChatController extends GetxController {
  List<ChatModel> chatModel = [];

  Stream<List<ChatModel>> getData(int id) async* {
    yield* Stream.periodic(Duration(seconds: 4), (_) {
      return ChatServices().showChat(id);
    }).asyncMap((event) async => await event);
    // List<ChatModel> chatModel = await ChatServices().showChat(id);
    // yield this.chatModel = chatModel;
  }

  Future<bool> inputChat({
    required int id,
    required String message,
  }) async {
    try {
      print('Succcccccccccessss===========-');

      await ChatServices().inputChat(
        id: id,
        message: message,
      );

      // print('ini usernya: ' + this.user.name.toString());

      return true;
    } catch (e) {
      print("Errornya = $e");
      return false;
    }
  }
}
