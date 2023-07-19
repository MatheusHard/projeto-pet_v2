import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:projeto_pet_v2/ui/menu/menu_item.dart' as item;
import 'package:projeto_pet_v2/ui/pet/main_pet.dart';

import 'main_screen.dart';
import 'menu/menu_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  item.MenuItem currentItem = MenuItems.main_screen;

  @override
  Widget build(BuildContext context) =>
      ZoomDrawer(
        style: DrawerStyle.Style1,

        mainScreen: getScreen(),
        menuScreen: MenuScreen(

          currentItem: currentItem,

          onSelectedItem: (item) {
            setState(() => currentItem = item);
          },

        ),

      );

  getScreen() {
    switch (currentItem) {
      case MenuItems.main_screen:
        return const MainScreen();
      case MenuItems.main_pet:
        return const MainPet();
    }
  }
}

