import 'package:birthday_remainder/Screens/menu/wishes/card_page.dart';
import 'package:birthday_remainder/Screens/menu/wishes/quotes_page.dart';
import 'package:birthday_remainder/customElement/custom_elements.dart';
import 'package:flutter/material.dart';

class WishPage extends StatefulWidget {
  const WishPage({super.key});

  @override
  State<WishPage> createState() => _WishPageState();
}

class _WishPageState extends State<WishPage> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            tabs: const [Tab(text: 'Cards',),Tab(text: 'Quotes',)],
            controller: tabController,
            indicatorColor: CustomColors.primary,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            labelColor: CustomColors.primary,
            unselectedLabelColor: CustomColors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
              child: TabBarView(
                controller: tabController,
                children:  [
                  CardPage(),
                  QuotesPage(),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
