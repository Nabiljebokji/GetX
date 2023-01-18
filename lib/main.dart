import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/Home.dart';
import 'package:get_x/pages/pageOne.dart';
import 'package:get_x/pages/pageThree.dart';
import 'package:get_x/pages/pageTwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Home(),
      getPages: [
        GetPage(name: "/pageone", page: () => pageOne()),
        GetPage(name: "/pagetwo", page: () => pageTwo()),
        GetPage(name: "/pagethree", page: () => pageThree()),
      ],
    );
  }
}
