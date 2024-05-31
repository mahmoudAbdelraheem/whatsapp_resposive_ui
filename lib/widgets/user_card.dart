import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';
import 'package:whatsapp_responsive_ui/screens/mobile_chat_screen.dart';

class UserCard extends StatelessWidget {
  final Map<String, String> userData;
  const UserCard({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MobileChatScreen(userData: userData),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: ListTile(
          title: Text(
            userData['name'].toString(),
            style: const TextStyle(fontSize: 18),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              userData['message'].toString(),
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(userData['profilePic'].toString()),
          ),
          trailing: Text(
            userData['time'].toString(),
            style: const TextStyle(
              fontSize: 13,
              color: AppColors.greyColor,
            ),
          ),
        ),
      ),
    );
  }
}
