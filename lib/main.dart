import 'dart:io';

import 'package:flutter/material.dart';
import 'package:projeto_pet_v2/ui/my_app_page.dart';
import 'package:projeto_pet_v2/ui/login_page.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();

    print("-----------------------------------------");

  runApp(
      MaterialApp(
        title: 'Happy',
        debugShowCheckedModeBanner: false,

        routes: {
          '/my_app': (BuildContext context) => MyApp(),
          '/login_page': (BuildContext context) =>  LoginPage(),




        },initialRoute: '/login_page',
      ));
}



