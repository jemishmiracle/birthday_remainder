
import 'package:birthday_remainder/Constants/image_path.dart';
import 'package:birthday_remainder/Screens/menu/calendar_page.dart';
import 'package:birthday_remainder/Screens/menu/remainder_page.dart';
import 'package:birthday_remainder/Screens/menu/upcoming_page.dart';
import 'package:birthday_remainder/Screens/menu/wishes/wish_page.dart';
import 'package:birthday_remainder/customElement/custom_elements.dart';
import 'package:birthday_remainder/widget/custom_image_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController();
  int selectedItemPosition = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedItemPosition = index;
    });
    pageController.jumpToPage(selectedItemPosition);
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Wishes',
        height: 70,
      ),
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
          children: const [
            RemainderPage(),
            UpcomingPage(),
            CalendarPage(),
            WishPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon:CustomImage(ImagePath.icRemainder,color: selectedItemPosition == 0 ? CustomColors.primary : CustomColors.grey,height: 25),
              label: 'Remainder'
          ),
          BottomNavigationBarItem(
              icon:CustomImage(ImagePath.icUpcoming,color: selectedItemPosition == 1 ? CustomColors.primary : CustomColors.grey,height: 25),
              label: 'Upcoming'
          ),
          BottomNavigationBarItem(
              icon:CustomImage(ImagePath.icCalendar,color: selectedItemPosition == 2 ? CustomColors.primary : CustomColors.grey,height: 25),
              label: 'Calendar'
          ),
          BottomNavigationBarItem(
              icon:CustomImage(ImagePath.icWishes,color: selectedItemPosition == 3 ? CustomColors.primary : CustomColors.grey,height: 25),
              label: 'Wishes'
          ),
        ],
        onTap: onItemTapped,
        backgroundColor: Colors.white,
        currentIndex: selectedItemPosition,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: CustomColors.grey,
        selectedItemColor: CustomColors.primary,
      ),
      floatingActionButton: selectedItemPosition ==  3
          ? SizedBox()
          : FloatingActionButton(
              backgroundColor: CustomColors.primary,
              shape: const CircleBorder(),
              onPressed: () {},
              child: const Icon(Icons.add,color: CustomColors.white,size: 30,),
            ),
    );
  }
}

