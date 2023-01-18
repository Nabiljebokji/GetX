import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/pages/pageThree.dart';
import 'package:get_x/pages/pageTwo.dart';

class pageOne extends StatefulWidget {
  const pageOne({super.key});

  @override
  State<pageOne> createState() => _pageOneState();
}

class _pageOneState extends State<pageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Get.to(() => pageOne());
                  Get.toNamed("/pageone");
                },
                child: Text("go to page 1 "),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.to(() => pageTwo());
                  Get.toNamed("/pagetwo");
                },
                child: Text("go to page 2 "),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.to(() => pageThree());
                  Get.toNamed("/pagethree");
                },
                child: Text("go to page 3 "),
              ),
              ElevatedButton(
                onPressed: () {
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
