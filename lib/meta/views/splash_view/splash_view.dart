import 'dart:async';
import 'package:baseapp/core/notifiers/cache.notifier.dart';
import 'package:baseapp/meta/views/home_view/home_view.dart';
import 'package:baseapp/meta/views/login_view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    var _cacheNotifier = Provider.of<CacheNotifier>(context, listen: false);
    _cacheNotifier.readCache(key: "login").then((value) {
      if (value != null) {
        return Timer(
            Duration(seconds: 1),
            () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomeView())));
      } else {
        return Timer(
            Duration(seconds: 1),
            () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginView())));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.pages,
          size: 100,
        ),
      ),
    );
  }
}
