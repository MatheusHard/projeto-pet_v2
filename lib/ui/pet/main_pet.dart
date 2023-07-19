import 'package:flutter/material.dart';

class MainPet extends StatefulWidget {
  const MainPet({super.key});

  @override
  State<MainPet> createState() => _MainPetState();
}

class _MainPetState extends State<MainPet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("PET"),
      ),
    );
  }
}
