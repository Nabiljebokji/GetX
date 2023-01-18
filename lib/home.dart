import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/pages/pageOne.dart';
import 'package:get_x/pages/pageThree.dart';
import 'package:get_x/pages/pageTwo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => pageOne(),
                  // ));
                  Get.to(() => pageOne());
                },
                child: Text("go to page 1 "),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => pageTwo());
                },
                child: Text("go to page 2 "),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => pageThree());
                },
                child: Text("go to page 3 "),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  // Navigator.of(context).maybePop();
                  Get.back();
                },
                child: Text("Back "),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
