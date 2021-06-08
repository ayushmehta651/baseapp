import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int counter = 5;
  void increament() {
    setState(() {
      counter++;
    });
    print(counter);
  }

  void decreament() {
    setState(() {
      counter = counter - 1;
    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Container(
        child: Center(
          child: Text(
            "$counter",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 50,
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: ClampingScrollPhysics(),
          children: [
            FloatingActionButton(
              onPressed: increament,
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: decreament,
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
