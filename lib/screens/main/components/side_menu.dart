import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
            ),
            DrawerListTitle(
              title: 'Dashboard',
              svgSrc: 'assets/icons/menu_dashboard.svg',
              onTap: () {},
            ),
            DrawerListTitle(
              title: 'Transaction',
              svgSrc: 'assets/icons/menu_tran.svg',
              onTap: () {},
            ),
            DrawerListTitle(
              title: 'Task',
              svgSrc: 'assets/icons/menu_task.svg',
              onTap: () {},
            ),
            DrawerListTitle(
              title: 'Documents',
              svgSrc: 'assets/icons/menu_doc.svg',
              onTap: () {},
            ),
            DrawerListTitle(
              title: 'Store',
              svgSrc: 'assets/icons/menu_store.svg',
              onTap: () {},
            ),
            DrawerListTitle(
              title: 'Notification',
              svgSrc: 'assets/icons/menu_notification.svg',
              onTap: () {},
            ),
            DrawerListTitle(
              title: 'Profile',
              svgSrc: 'assets/icons/menu_profile.svg',
              onTap: () {},
            ),
            DrawerListTitle(
              title: 'Settings',
              svgSrc: 'assets/icons/menu_setting.svg',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTitle extends StatelessWidget {
  final String title, svgSrc;
  final VoidCallback onTap;

  const DrawerListTitle({
    Key key,
    @required this.title,
    @required this.svgSrc,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: this.onTap,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        this.svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        this.title,
        style: TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
