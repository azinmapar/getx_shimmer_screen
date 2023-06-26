import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shimmer_screen/controllers/navigation_bar_controller.dart';
import 'package:getx_shimmer_screen/shimmer_screen.dart';

class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: const ShimmerScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() {
        return AnimatedBottomNavigationBar(
          icons: const [
            Icons.home,
            Icons.search,
            Icons.favorite,
            Icons.account_circle_rounded,
          ],
          activeIndex: Get.find<NavigationBarController>().index.value,
          activeColor: Colors.red,
          inactiveColor: Colors.white,
          backgroundColor: Colors.grey[800],
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) {
            Get.find<NavigationBarController>().index.value = index;
          },
          //other params
        );
      }),
    );
  }
}
