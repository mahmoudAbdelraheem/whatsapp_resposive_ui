import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';

class MessageCard extends StatelessWidget {
  final String message;
  final String time;
  final bool isMe;
  const MessageCard({
    super.key,
    required this.message,
    required this.time,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.width - 50,
        ),
        child: Card(
          elevation: 1,
          color: isMe ? AppColors.messageColor : AppColors.senderMessageColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 30, 20),
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                bottom: isMe ? 4 : 2,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      time,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white60,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.done_all,
                      size: 20,
                      color: Colors.white60,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
