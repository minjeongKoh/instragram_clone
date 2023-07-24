import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragram_clone/src/controller/bottom_nav_controller.dart';
import 'package:instragram_clone/src/widget/image_avatar.dart';
import 'package:instragram_clone/src/widget/image_data.dart';
import 'package:instragram_clone/view/home.dart';

class App extends GetView<BottomNAvController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => WillPopScope(
        onWillPop: controller.popAction,
        child: Scaffold(
          body: _body(),
          bottomNavigationBar: _bottom(),
        ),
      ),
    );
  }

  Widget _bottom() {
    return BottomNavigationBar(
      currentIndex: controller.index,
      onTap: controller.changeIndex,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            icon: ImageData(path: ImagePath.homeOff),
            activeIcon: ImageData(path: ImagePath.homeOn),
            label: 'home'),
        BottomNavigationBarItem(
            icon: ImageData(path: ImagePath.searchOff),
            activeIcon: ImageData(path: ImagePath.searchOn),
            label: 'home'),
        BottomNavigationBarItem(
            icon: ImageData(path: ImagePath.upload),
            activeIcon: ImageData(path: ImagePath.upload),
            label: 'home'),
        BottomNavigationBarItem(
            icon: ImageData(path: ImagePath.searchOff),
            activeIcon: ImageData(path: ImagePath.searchOn),
            label: 'home'),
        const BottomNavigationBarItem(
            icon: ImageAvatar(
                url:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS75ebrwvgVW5Ks_oLfCbG8Httf3_9g-Ynl_Q&usqp=CAU',
                type: AvatarType.OFF),
            activeIcon: ImageAvatar(
              url:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS75ebrwvgVW5Ks_oLfCbG8Httf3_9g-Ynl_Q&usqp=CAU',
              type: AvatarType.ON,
            ),
            label: 'home'),
      ],
    );
  }

  Widget _body() {
    return IndexedStack(
      index: controller.index,
      children: [
        const Home(),
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green),
        Container(color: Colors.yellow),
        Container(color: Colors.black),
      ],
    );
  }
}
