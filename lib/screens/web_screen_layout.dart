import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_responsive_ui/colors.dart';
import 'package:whatsapp_responsive_ui/widgets/chat_list.dart';
import 'package:whatsapp_responsive_ui/widgets/contacts_list.dart';
import 'package:whatsapp_responsive_ui/widgets/web_chat_app_bar.dart';

import '../widgets/web_profile_bar.dart';
import '../widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //! this column for the frist section (profile , search, contact list)
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //? web profile
                  WebProfileBar(),
                  //? web search bar
                  WebSearchBar(),
                  //? contacts lists
                  ContactsList(),
                ],
              ),
            ),
          ),
          //! the second section for chats
          Container(
            //? this container will take a 75% from the screen width
            width: MediaQuery.of(context).size.width * 0.70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                //? chat app bar
                const WebChatAppBar(),
                //?chat list
                const Expanded(child: ChatList()),

                //? messageinput box
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: AppColors.chatBarMessage,
                    border: Border(
                      bottom: BorderSide(
                        color: AppColors.dividerColor,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: AppColors.greyColor,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file_outlined,
                          color: AppColors.greyColor,
                          size: 30,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 20),
                              fillColor: AppColors.searchBarColor,
                              filled: true,
                              hintText: 'Type a message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: AppColors.greyColor,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
