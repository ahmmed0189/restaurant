import 'package:flutter/material.dart';
import 'package:restaurant/pages/cart_page.dart';
import 'package:restaurant/pages/intro_page.dart';
import 'package:restaurant/pages/menu_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}
