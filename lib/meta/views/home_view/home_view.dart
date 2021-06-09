import 'package:baseapp/core/notifiers/cache.notifier.dart';
import 'package:baseapp/meta/views/login_view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var _cacheNotifier = Provider.of<CacheNotifier>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: Text("Home View"),
        ),
        body: Center(
          child: MaterialButton(
            color: Colors.blue,
            child: Text("Log out"),
            onPressed: () {
              _cacheNotifier.deleteCache(key: "login").whenComplete(() {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginView()));
              });
            },
          ),
        ));
  }
}
