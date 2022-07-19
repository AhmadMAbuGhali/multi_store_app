import 'package:flutter/material.dart';
import 'package:multi_store_app/widget/fake_search.dart';

import '../minor_screen/search.dart';

List<ItemData> items = [
  ItemData(label: 'Men'),
  ItemData(label: 'Women'),
  ItemData(label: 'Shoes'),
  ItemData(label: 'Electronics'),
  ItemData(label: 'Accessories'),
  ItemData(label: 'bags'),
  ItemData(label: 'home & garden'),
  ItemData(label: 'beauty'),
  ItemData(label: 'kids'),
];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final PageController _pageController = PageController();
@override
void initState(){
  for (var element in items) {
    element.isSelected = false;
  }
  setState(() {
    items[0].isSelected = true;
  });
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: sideNavigator(size),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: categoryView(size),
          ),
        ],
      ),
    );
  }

  Widget sideNavigator(Size size) {
    return SizedBox(
      height: size.height * 0.8,
      width: size.width * 0.225,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _pageController.animateToPage(
                index,
              duration: const Duration(milliseconds: 100),
                curve: Curves.bounceInOut
              );
              // for (var element in items) {
              //   element.isSelected = false;
              // }
              // setState(() {
              //   items[index].isSelected = true;
              // });
            },
            child: Container(
                height: 100,
                color: items[index].isSelected == true
                    ? Colors.white
                    : Colors.grey.shade300,
                child: Center(
                  child: Text(items[index].label),
                )),
          );
        },
      ),
    );
  }

  Widget categoryView(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.775,
      color: Colors.white,
      child: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          for (var element in items) {
            element.isSelected = false;
          }
          setState(() {
            items[value].isSelected = true;
          });
        },
        scrollDirection: Axis.vertical,
        children: const [
          Center(
            child: Text('Men'),
          ),
          Center(
            child: Text('Women'),
          ),
          Center(
            child: Text('Shoes'),
          ),
          Center(
            child: Text('Electronics'),
          ),
          Center(
            child: Text('Accessories'),
          ),
          Center(
            child: Text('bags'),
          ),
          Center(
            child: Text('home & garden'),
          ),
          Center(
            child: Text('beauty'),
          ),
          Center(
            child: Text('kids'),
          ),
        ],
      ),
    );
  }
}

class ItemData {
  String label;
  bool isSelected;

  ItemData({required this.label, this.isSelected = false});
}
