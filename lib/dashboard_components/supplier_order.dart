import 'package:flutter/material.dart';
import 'package:multi_store_app/widget/appbar_widget.dart';
import 'package:multi_store_app/widget/fake_search.dart';

class SupplierOrder extends StatelessWidget {
  const SupplierOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppBarTitle(title: 'Supplier Order',),
        leading: BackIcon(),
      ),
    );
  }
}
