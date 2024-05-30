import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/info.dart';
import 'package:whatsapp_responsive_ui/widgets/user_card.dart';

import '../colors.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, index) => const Divider(
          color: AppColors.dividerColor,
          indent: 85,
        ),
        itemCount: info.length,
        itemBuilder: (context, index) {
          return UserCard(userData: info[index]);
        },
      ),
    );
  }
}
