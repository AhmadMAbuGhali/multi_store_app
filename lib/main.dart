import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multi_store_app/auth/customer_signup.dart';
import 'package:multi_store_app/main_screens/supplier_home.dart';
import 'package:multi_store_app/main_screens/welcome_screen.dart';
import 'firebase_options.dart';
import 'main_screens/customer_home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    //  home: WelcomeScreen(),
     initialRoute: '/welcome_screen',
      routes: {
        '/welcome_screen':(context)=> const WelcomeScreen(),
        '/supplier_home':(context)=> const SupplierHomeScreen(),
        '/customer_home':(context)=> const CustomerHomeScreen(),
        '/customer_signup':(context)=> const CustomerRegister(),
      },
    );
  }
}
