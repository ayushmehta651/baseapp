import 'package:baseapp/meta/views/home_view/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
