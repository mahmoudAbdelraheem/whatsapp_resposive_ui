import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/info.dart';
import 'package:whatsapp_responsive_ui/widgets/message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (_, index) {
          if (messages[index]['isMe'] == true) {
            //? MyMessages Card view
            return MessageCard(
              message: messages[index]['text'].toString(),
              time: messages[index]['time'].toString(),
              isMe: true,
            );
          }
          return MessageCard(
            message: messages[index]['text'].toString(),
            time: messages[index]['time'].toString(),
            isMe: false,
          );
        });
  }
}
