import 'package:flutter/material.dart';

import '../minor_screen/sub_categ_products.dart';

class SliderBar extends StatelessWidget {
  final String mainCategoryName;

  const SliderBar({Key? key, required this.mainCategoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.775,
      width: MediaQuery.of(context).size.width * 0.05,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.brown.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: RotatedBox(
            quarterTurns: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                mainCategoryName == 'Kids'
                    ? Text('')
                    : Text(
                        '<<',
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 10,
                        ),
                      ),
                Text(
                  mainCategoryName.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.brown,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 10,
                  ),
                ),
                mainCategoryName == 'men'
                    ? Text('')
                    : Text(
                        '>>',
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 10,
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SubcategoryModel extends StatelessWidget {
  final String mainCategory;
  final String subCategory;
  final String assetName;
  final String subCategoryLable;

  const SubcategoryModel(
      {Key? key,
      required this.mainCategory,
      required this.subCategory,
      required this.assetName,
      required this.subCategoryLable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategProducts(
                      mainCategName: mainCategory,
                      subCategoryName: subCategory,
                    )));
      },
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image(
              image: AssetImage(assetName),
            ),
          ),
          Center(
            child: Text(
              subCategoryLable,
              style: TextStyle(fontSize: 11),
            textAlign: TextAlign.justify,
            ),

          )
        ],
      ),
    );
  }
}

class CategoryHeaderLabel extends StatelessWidget {
  final String categName;

  const CategoryHeaderLabel({Key? key, required this.categName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Text(
        categName,
        style: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.5),
      ),
    );
  }
}
