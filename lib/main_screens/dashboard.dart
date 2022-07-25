import 'package:flutter/material.dart';
import 'package:multi_store_app/dashboard_components/balance.dart';
import 'package:multi_store_app/dashboard_components/edit_profile.dart';
import 'package:multi_store_app/dashboard_components/manage_product.dart';
import 'package:multi_store_app/dashboard_components/my_store.dart';
import 'package:multi_store_app/dashboard_components/statics.dart';
import 'package:multi_store_app/dashboard_components/supplier_order.dart';
import 'package:multi_store_app/widget/appbar_widget.dart';

List<String> label = [
  'my store',
  'orders',
  'edit profile',
  'manage products',
  'balance',
  'statics'
];
List<IconData> icons = [
  Icons.store,
  Icons.shop_2_outlined,
  Icons.edit,
  Icons.settings,
  Icons.attach_money,
  Icons.show_chart,
];

List<Widget> pages = [
  MyStore(),
  SupplierOrder(),
  EditProfile(),
  ManageProduct(),
  Balance(),
  Statics(),
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(
          title: 'Dashboard',
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/welcome_screen');
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 42,
          crossAxisSpacing: 42,
          children: List.generate(6, (index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (contxt) => pages[index]));
              },
              child: Card(
                elevation: 23,
                shadowColor: Colors.pinkAccent.shade200,
                color: Colors.blueGrey.withOpacity(0.6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      icons[index],
                      size: 44,
                      color: Colors.yellowAccent,
                    ),
                    Text(
                      label[index].toUpperCase(),
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Acme',
                          letterSpacing: 2,
                          color: Colors.yellowAccent),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
