import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../minor_screen/search.dart';
import '../widget/fake_search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: FakeSearch(),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.yellow,
            indicatorWeight: 4,
            tabs: [
              RepeatedTab(lable: 'Men'),
              RepeatedTab(lable: 'Women'),
              RepeatedTab(lable: 'Shoes'),
              RepeatedTab(lable: 'Bags'),
              RepeatedTab(lable: 'Electronics'),
              RepeatedTab(lable: 'Accessories'),
              RepeatedTab(lable: 'Home & Garden'),
              RepeatedTab(lable: 'Kids'),
              RepeatedTab(lable: 'Beauty'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("men Screen")),
            Center(child: Text("women Screen")),
            Center(child: Text("shoes Screen")),
            Center(child: Text("Bags Screen")),
            Center(child: Text("Electronics Screen")),
            Center(child: Text("Accessories Screen")),
            Center(child: Text("Home & Garden Screen")),
            Center(child: Text("Kids Screen")),
            Center(child: Text("Beauty Screen")),
          ],
        ),
      ),
    );
  }
}



class RepeatedTab extends StatelessWidget {
  final String lable;

  const RepeatedTab({Key? key, required this.lable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        lable,
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}
