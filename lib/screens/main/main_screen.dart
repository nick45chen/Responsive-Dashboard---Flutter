import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
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
