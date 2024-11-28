import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_demo/controllers.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  HomePageController controller = Get.put(HomePageController());

  String myText =
      "df skdjfkjf klfjsddlk fjldskfjsldkdfj sdlkdfjsdlkfj sdlkfjkjfhdskjfh sd dfsd dhfkjsd ddfds hfj dsd fdsjkfhds d fds dsjfh sddf sddkjfs dfj sdlkfj sdldf ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: const Text("Add")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                if (controller.counter > 0) {
                  controller.decrement();
                }
              },
              child: const Text("Close")),
        ],
      ),
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      // GetX ka us karte hai tab Obx()=> ka us karna hota hai

      body: Obx(
        () => Column(
          children: [
            Center(
              child: Text(
                "Count ${controller.counter}",
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(myText)
          ],
        ),
      ),
    );
  }
}
