import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';
import 'package:whatsapp_responsive_ui/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBarColor,
          elevation: 0.0,
          title: const Text(
            'Whatsapp',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.greyColor,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: AppColors.tabColor,
            indicatorWeight: 4,
            indicatorPadding: EdgeInsets.all(0),
            labelColor: AppColors.tabColor,
            unselectedLabelColor: AppColors.greyColor,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: const ContactsList(),
      ),
    );
  }
}
