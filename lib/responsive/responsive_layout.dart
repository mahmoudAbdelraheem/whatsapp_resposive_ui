import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout({
    super.key,
    required this.mobileScreenLayout,
    required this.webScreenLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        //? conatraints for web view
        return webScreenLayout;
      } else {
        //? conatraints for mobile view
        return mobileScreenLayout;
      }
    });
  }
}
