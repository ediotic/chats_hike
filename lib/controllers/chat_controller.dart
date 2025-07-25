import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final TextEditingController msgController = TextEditingController();
  RxBool isTyping = false.obs;

  @override
  void onInit() {
    super.onInit();
    msgController.addListener(() {
      isTyping.value = msgController.text.trim().isNotEmpty;
    });
  }

  @override
  void onClose() {
    msgController.dispose();
    super.onClose();
  }

  void sendMessage() {
    if (msgController.text.trim().isNotEmpty) {
      print("Sending message: ${msgController.text}");
      msgController.clear();
    }
  }
}
