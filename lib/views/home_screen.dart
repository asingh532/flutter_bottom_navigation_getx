import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_getx/controller/controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(NavController());
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.index.value,
            children: controller.screenList,
          )),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
              backgroundColor: Colors.red,
            ),
          ],
          currentIndex: controller.index.value,
          onTap: (index) {
            controller.updateIndex(index);
          },
        );
      }),
    );
  }
}
