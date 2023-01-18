import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/pages/pageOne.dart';
import 'package:get_x/pages/pageThree.dart';

class pageTwo extends StatefulWidget {
  const pageTwo({super.key});

  @override
  State<pageTwo> createState() => _pageTwoState();
}

class _pageTwoState extends State<pageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Get.off(() => pageOne());
                  Get.offNamed("/pageone");
                },
                child: Text("go to page 1 off (replacement named)"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.off(() => pageTwo());
                  Get.offNamed("/pagetwo");
                },
                child: Text("go to page 2 off(replacement named)"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.off(() => pageThree());
                  Get.offNamed("/pagethree");
                },
                child: Text("go to page 3 off(replacement named)"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
