import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.30,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: AppColors.dividerColor,
          ),
        ),
        color: AppColors.webAppBarColor,
      ),
      child: Row(
        children: [
          Container(
            width: 45.0, // diameter of the circle
            height: 45.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
              ),
            ),
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}
