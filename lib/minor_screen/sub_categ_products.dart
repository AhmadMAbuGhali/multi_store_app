import 'package:flutter/material.dart';

import '../widget/appbar_widget.dart';

class SubCategProducts extends StatelessWidget {
  final String subCategoryName;
  final mainCategName;

  const SubCategProducts(
      {Key? key, required this.subCategoryName, required this.mainCategName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackIcon(),
        title: AppBarTitle(title: subCategoryName),
      ),
      body: Center(
        child: Text(mainCategName),
      ),
    );
  }
}

