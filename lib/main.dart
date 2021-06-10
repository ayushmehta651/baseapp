import 'package:baseapp/meta/views/home_view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/providers/providers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        child: MaterialApp(
          theme: ThemeData.dark(),
          home: HomeView(),
          debugShowCheckedModeBanner: false,
        ),
        providers: providers);
  }
}
