import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:untitled8/screens/cart/cart_screen.dart';
import 'package:untitled8/screens/profile_screen.dart';
import 'package:untitled8/screens/search_screen.dart';

import 'home_page.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late PageController controller;
  int currentScreen = 0;
  List<Widget> screens = [
    HomePage(),
   // SearchScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: currentScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex:currentScreen,
        backgroundColor:Theme.of(context).scaffoldBackgroundColor,
        elevation:2,
        height:kBottomNavigationBarHeight,

        onDestinationSelected: (index) {
          setState(() {
            currentScreen = index;
          });
          controller.jumpToPage(currentScreen);
        },
        destinations: [
          NavigationDestination(
              selectedIcon: Icon(IconlyBold.home),
              icon: Icon(IconlyLight.home),
              label: "Home"),
        /*     NavigationDestination(
           selectedIcon: Icon(IconlyBold.search),
              icon: Icon(IconlyLight.search),
              label: "Search"),*/
          NavigationDestination(
              selectedIcon: Icon(IconlyBold.bag2),
              icon: Icon(IconlyLight.bag2),
              label: "Cart"),
          NavigationDestination(
              selectedIcon: Icon(IconlyBold.profile),
              icon: Icon(IconlyLight.profile),
              label: "Profile"),


        ],
      ),
    );
  }
}
