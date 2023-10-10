import 'package:app/screens/login.dart';
import 'package:app/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
       initialRoute: '/login',
       getPages: [
         GetPage(name: '/login', page:() =>const Login()),
         GetPage(name: '/register', page: () => const Register()),
       ],
    );
  }
}
