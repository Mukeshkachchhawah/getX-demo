import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxInt counter = 0.obs; // counter name variable
  // RxInt is Data Type
  // RxBool
  // RxDouble
  // RxList
  // RxMap

// add name Function
  void increment() {
    counter++;
  }

  // add name Function
  void decrement() {
    counter--;
  }
}
