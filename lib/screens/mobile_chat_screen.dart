import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';
import 'package:whatsapp_responsive_ui/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  final Map<String, String> userData;
  const MobileChatScreen({super.key, required this.userData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBarColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          userData['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          //? chat List
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/backgroundImage.png',
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: const ChatList(),
            ),
          ),
          //? message text feild
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.mobileChatBoxColor,
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(
                  Icons.emoji_emotions_outlined,
                  color: AppColors.greyColor,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt,
                        color: AppColors.greyColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.attach_file,
                        color: AppColors.greyColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.money,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
              ),
              contentPadding: const EdgeInsets.all(5),
              hintText: 'Type a message',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
