import 'package:fadamat/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: secondaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets/images/Fadamat2.png")),

            // List of menu items
            DrawerListTile(
              title: "Dashboard",
              svgSrc: "assets/icons/menu_dashboard.svg",
              press: () {
                // Handle navigation to Dashboard
              },
            ),
            DrawerListTile(
              title: "Notifications",
              svgSrc: "assets/icons/menu_notification.svg",
              press: () {
                // Handle navigation to Notifications
              },
            ),
            DrawerListTile(
              title: "Settings",
              svgSrc: "assets/icons/menu_setting.svg",
              press: () {
                // Handle navigation to Settings
              },
            ),
            DrawerListTile(
              title: "About",
              svgSrc: "assets/icons/menu_profile.svg",
              press: () {
                // Handle navigation to About
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.press,
  });

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(title, style: TextStyle(color: Colors.white54)),
      onTap: press,
      horizontalTitleGap: 0.0,
    );
  }
}
