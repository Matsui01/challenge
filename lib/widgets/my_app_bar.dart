import 'package:flutter/material.dart';
import 'package:matsui/app_theme.dart';
import 'package:matsui/widgets/my_avatar.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => new Size.fromHeight(70.0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(70.0),
      child: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            "🧙‍♂️ Kono Subarashii",
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(
              right: spacingSize / 2,
              left: spacingSize,
            ),
            color: Colors.transparent,
            child: Icon(Icons.shopping_bag_outlined),
          ),
          Container(
            padding: EdgeInsets.only(right: spacingSize / 2),
            child: CircleAvatar(
              foregroundImage: AssetImage("assets/avatar.png"),
              radius: iconSize / 2,
            ),
          ),
        ],
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Scaffold.of(context).openDrawer();
              },
              // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ],
        ),
      ),
    );
  }
}
