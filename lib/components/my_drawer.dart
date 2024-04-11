import 'package:flutter/material.dart';
import 'package:food_delivery/pages/settings_page.dart';

import 'ny_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        //app logo
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_outlined,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          //home list tile
          MyDrawerTile(
              text: "Home",
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),
          //setting list tile
          MyDrawerTile(
            text: "Settings",
            icon: Icons.settings,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ),
            ),
          ),
          //logout list tile
          const Spacer(),
          MyDrawerTile(
              text: "Log Out",
              icon: Icons.logout_outlined,
              onTap: () => Navigator.pop(context)),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
