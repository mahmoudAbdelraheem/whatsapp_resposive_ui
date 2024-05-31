import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/colors.dart';
import 'package:whatsapp_responsive_ui/responsive/responsive_layout.dart';
import 'package:whatsapp_responsive_ui/screens/mobile_screen_layout.dart';
import 'package:whatsapp_responsive_ui/screens/web_screen_layout.dart';

void main() {
  runApp(const ResponsiveWhatsApp());
}

class ResponsiveWhatsApp extends StatelessWidget {
  const ResponsiveWhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whats app responsive UI',
      theme: ThemeData.dark(useMaterial3: false).copyWith(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
            iconColor: WidgetStatePropertyAll(
              AppColors.greyColor,
            ),
          ),
        ),
      ),
      home: const ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileScreenLayout(),
      ),
    );
  }
}
