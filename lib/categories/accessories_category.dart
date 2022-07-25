import 'package:flutter/material.dart';
import 'package:multi_store_app/utilities/categ_list.dart';

import '../minor_screen/sub_categ_products.dart';
import '../widget/category_widget.dart';

List<String> labeltry = [
  'Shirt',
  'jeans',
  'Shoes',
  'jacket',
];

class AccessoriesCategory extends StatelessWidget {
  const AccessoriesCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.775,
              width: MediaQuery.of(context).size.width * 0.725,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategoryHeaderLabel(
                    categName: 'Accessories',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 50,
                      crossAxisSpacing: 15,
                      children: List.generate(accessories.length, (index) {
                        return SubcategoryModel(
                          mainCategory: 'Accessories',
                          subCategory: accessories[index],
                          assetName: 'images/accessories/accessories$index.jpg',
                          subCategoryLable: accessories[index],
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: SliderBar(
              mainCategoryName: 'Accessories',
            ),
          ),
        ],
      ),
    );
  }
}
