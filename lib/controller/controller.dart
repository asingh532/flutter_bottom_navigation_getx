import 'package:flutter/cupertino.dart';
import 'package:flutter_bottom_navigation_getx/views/bottom_pages/page1.dart';
import 'package:flutter_bottom_navigation_getx/views/bottom_pages/page2.dart';
import 'package:flutter_bottom_navigation_getx/views/bottom_pages/page3.dart';
import 'package:flutter_bottom_navigation_getx/views/bottom_pages/page4.dart';
import 'package:get/get.dart';

class NavController extends GetxController{
  var screenList = <Widget>[].obs;
  var index = 0.obs;

  @override
  void onInit() {
    super.onInit();
    screenList.add(const PageOne());
    screenList.add(const PageSecond());
    screenList.add(const PageThird());
    screenList.add(const PageFourth());
  }

  void updateIndex(int position){
    index.value = position;
  }

}