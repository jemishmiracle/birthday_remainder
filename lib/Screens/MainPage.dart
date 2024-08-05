

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:birthday_remainder/Controller/DarkController.dart';
import 'package:birthday_remainder/custom_elements/custom_elements.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController();
  int selectedItemPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        child: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (value) {
            setState(() {
              selectedItemPosition = value;
            });
          },
          children: [
            // ChatPage(),
            // GroupsPage(),
            // ProfilePage(),
            // MoreDetailsPage(),
          ],
        ),
      ),
      // bottomNavigationBar: GetBuilder<DarkController>(
      //   builder: (controller) => Container(
      //       width: double.infinity,
      //       color: Theme.of(context).inputDecorationTheme.fillColor,
      //       child: FloatingNavbar(
      //         borderRadius: 10, fontSize: 12.sp,elevation: 5.0,
      //         backgroundColor: Theme.of(context).textTheme.bodySmall?.color,
      //         selectedBackgroundColor: CustomColors.primary,
      //         unselectedItemColor: CustomColors.iconColor,
      //         selectedItemColor: CustomColors.white,
      //         margin: EdgeInsets.zero,
      //         padding: EdgeInsets.zero,
      //         onTap: (int val) {
      //           setState(() {
      //             selectedItemPosition = val;
      //           });
      //           pageController.jumpToPage(val);
      //         },
      //         currentIndex: selectedItemPosition,
      //         items: [
      //           FloatingNavbarItem(
      //             icon: Icons.chat,
      //             title: 'Chat',
      //           ),
      //           FloatingNavbarItem(
      //             icon: Icons.group,
      //             title: 'Groups',
      //           ),
      //           FloatingNavbarItem(
      //             icon: Icons.person,
      //             title: 'Profile',
      //           ),
      //           FloatingNavbarItem(
      //             icon: Icons.menu,
      //             title: 'More',
      //           ),
      //         ],
      //       ),
      // ),),
    );
  }
}

