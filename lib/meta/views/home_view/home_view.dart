import 'package:baseapp/core/notifiers/mockapi.notifier.dart';
import 'package:baseapp/meta/views/list_data/list_data.view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final idController = TextEditingController();
    final bodyController = TextEditingController();
    var _mockApiNotifier = Provider.of<MockAPINotifier>(context, listen: false);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => ListDataView()));
          },
          child: Icon(Icons.arrow_circle_up)),
      appBar: AppBar(title: Text("Home View")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(hintText: "Enter title"),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: bodyController,
            decoration: InputDecoration(hintText: "Enter body"),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: idController,
            decoration: InputDecoration(hintText: "Enter id"),
          ),
          SizedBox(
            height: 10,
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: [
              MaterialButton(
                onPressed: () {
                  _mockApiNotifier.getData();
                },
                child: Text("GET"),
                color: Colors.blue,
              ),
              MaterialButton(
                onPressed: () {
                  _mockApiNotifier.getDataById(id: idController.text);
                },
                child: Text("GET BY ID"),
                color: Colors.yellowAccent,
              ),
              MaterialButton(
                onPressed: () {
                  _mockApiNotifier.postData(
                      id: idController.text,
                      title: titleController.text,
                      body: bodyController.text);
                },
                child: Text("POST"),
                color: Colors.green,
              ),
              MaterialButton(
                onPressed: () {
                  _mockApiNotifier.updateData(
                    id: idController.text,
                    title: titleController.text,
                  );
                },
                child: Text("UPDATE"),
                color: Colors.orange,
              ),
              MaterialButton(
                onPressed: () {
                  _mockApiNotifier.deleteData(
                    id: idController.text,
                  );
                },
                child: Text("DELETE"),
                color: Colors.orange,
              )
            ],
          )
        ],
      )),
    );
  }
}
