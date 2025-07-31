import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/models/shop.dart';
import 'package:restaurant/my_app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Shop(), child: const MyApp()),
  );
}
