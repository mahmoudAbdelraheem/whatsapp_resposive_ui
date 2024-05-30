import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';
import 'package:whatsapp_responsive_ui/widgets/search_text_field.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.dividerColor,
          ),
        ),
      ),
      child: const SearchTextField(),
    );
  }
}
