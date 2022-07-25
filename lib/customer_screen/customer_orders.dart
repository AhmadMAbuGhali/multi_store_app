import 'package:flutter/material.dart';
import 'package:multi_store_app/widget/appbar_widget.dart';
import 'package:multi_store_app/widget/fake_search.dart';

class CustomerOrder extends StatelessWidget {
  const CustomerOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppBarTitle(title: 'Customer Order',),
        leading: BackIcon(),
      ),
    );
  }
}
