import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../widgets/app_send_msg_field.dart';
import '../../widgets/chat_messege_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final String _name = "Vishal";

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(backgroundColor: AppColors.bluePrimary, radius: 20),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _name.length > 10 ? _name.substring(0, 10) : _name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Online",
                    style: TextStyle(color: AppColors.grey9E9E, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.video_call_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: ListView(
          children: [
            ChatMessegeBubble(
              message:
                  "fkffifhihfihfidihifhdihfidshfihdifhsiishfihfihsihififsishfis",
              isComing: true,
              status: " yesssssss",
              time: "1:18 AM ",
              imageUrl: "",
            ),
            ChatMessegeBubble(
              message:
                  "hiijsofjosjfojsojosjfojsofjosfosjfojsofjosjfosjfosfiiii",
              isComing: false,
              status: " yesssssss",
              time: "1:18 AM ",
              imageUrl:
                  "https://innovance.com.tr/wp-content/uploads/2024/10/flutter-hero.jpg",
            ),
            ChatMessegeBubble(
              message: "hiiiiii",
              isComing: true,
              status: " yesssssss",
              time: "1:18 AM ",
              imageUrl: "",
            ),
            ChatMessegeBubble(
              message: "hiiiiii",
              isComing: false,
              status: " yesssssss",
              time: "1:18 AM ",
              imageUrl: "",
            ),
            ChatMessegeBubble(
              message:
                  "hiijsofjosjfojsojosjfojsofjosfosjfojsofjosjfosjfosfiiii",
              isComing: true,
              status: " yesssssss",
              time: "1:18 AM ",
              imageUrl:
                  "https://innovance.com.tr/wp-content/uploads/2024/10/flutter-hero.jpg",
            ),
            ChatMessegeBubble(
              message: "hiiiiii",
              isComing: true,
              status: " yesssssss",
              time: "1:18 AM ",
              imageUrl: "",
            ),
            ChatMessegeBubble(
              message: "hiiiiii",
              isComing: false,
              status: " yesssssss",
              time: "1:18 AM ",
              imageUrl: "",
            ),
          ],
        ),

        // msg send field
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: AppSendMsgField(),
      ),
    );
  }
}
