import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_responsive_ui/widgets/contacts_list.dart';

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
                  fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
