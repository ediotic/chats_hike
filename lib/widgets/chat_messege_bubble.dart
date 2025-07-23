import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_global.dart';
import '../utils/app_icons.dart';

class ChatMessegeBubble extends StatelessWidget {
  final String message;
  final bool isComing;
  final String status;
  final String time;
  final String imageUrl;
  const ChatMessegeBubble({
    super.key,
    required this.message,
    required this.isComing,
    required this.status,
    required this.time,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isComing
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(18),
          margin: EdgeInsets.all(10),
          constraints: BoxConstraints(maxWidth: mq.width / 1.4),
          decoration: BoxDecoration(
            color: isComing? AppColors.bluePrimary : AppColors.blueSecondary,
            borderRadius: isComing
                ? BorderRadius.circular(
                    30,
                  ).copyWith(bottomLeft: Radius.circular(0))
                : BorderRadius.circular(
                    30,
                  ).copyWith(bottomRight: Radius.circular(0)),
          ),
          child: imageUrl == "" ? Text(
            message,
            style: TextStyle(color: isComing? AppColors.white : AppColors.grey1212, fontSize: 15),
          ) : Column(
            children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    child: Image.network(imageUrl)
                    ),
                    SizedBox(height: 7),

                    Text(message, style: TextStyle(color: isComing? AppColors.white : AppColors.grey1212, fontSize: 15),),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: isComing
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
          children: [
            isComing
                ? Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      time,
                      style: TextStyle(color: AppColors.grey9E9E, fontSize: 13),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Text(
                          time,
                          style: TextStyle(
                            color: AppColors.grey9E9E,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(width: 5),
                        Image.asset(AppIcons.blueTick, width: 22),
                      ],
                    ),
                  ),
          ],
        ),
      ],
    );
  }
}
