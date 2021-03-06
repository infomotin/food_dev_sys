import 'package:flutter/material.dart';
import 'package:food_dev_sys/pages/home/main_prod_page.dart';
import 'package:food_dev_sys/pages/prod/populer_prod_ditails.dart';
import 'package:get/get.dart';
import 'pages/home/main_prod_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PopulerProdDetails(),
    );
  }
}
