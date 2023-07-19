import 'package:flutter/material.dart';
import 'package:projeto_pet_v2/ui/menu/menu_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context)  => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: const Text("Principal"),
      leading: const MenuWidget(),
    ),
  );
}
