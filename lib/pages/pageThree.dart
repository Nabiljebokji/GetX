import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_x/pages/pageOne.dart';
import 'package:get_x/pages/pageTwo.dart';

class pageThree extends StatefulWidget {
  const pageThree({super.key});

  @override
  State<pageThree> createState() => _pageThreeState();
}

class _pageThreeState extends State<pageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Get.offAll(() => pageOne());
                  Get.offAllNamed("/pageone");
                },
                child: Text("go to page 1 OFFALL(replaced rout)"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.offAll(() => pageTwo());
                  Get.offAllNamed("/pagetwo");
                },
                child: Text("go to page 2  OFFALL(replaced rout)"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.offAll(() => pageThree());
                  Get.offAllNamed("/pagethree");
                },
                child: Text("go to page 3 OFFALL(replaced rout) "),
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
