import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/chat_controller.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';

class AppSendMsgField extends StatelessWidget {
  const AppSendMsgField({super.key});

  @override
  Widget build(BuildContext context) {
    final chatCtrl = Get.put(ChatController());
    return Container(
      // padding: EdgeInsets.only(bottom:10 ),
      decoration: BoxDecoration(
        color: AppColors.grey1212
      ),
      child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.only(left: 19),
      
                  decoration: BoxDecoration(
                    color: AppColors.grey9E9E.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextField(
                    controller: chatCtrl.msgController,
                    style: TextStyle(color: AppColors.grey1212),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      filled: false,
                      hintText: AppStrings.typeMsg,
                      hintStyle: TextStyle(
                        color: AppColors.grey1212,
                        fontSize: 13,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.photo, color: AppColors.bluePrimary,size: 27,),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Obx(
                () => InkWell(
                  onLongPress: () {
                    print("recod");
                  },
                  onTap: () {
                    chatCtrl.sendMessage();
                  },
                  child: CircleAvatar(
                    backgroundColor: AppColors.bluePrimary,
                    radius: 25,
                    child: Icon(
                      chatCtrl.isTyping.value ? Icons.send : Icons.mic,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}