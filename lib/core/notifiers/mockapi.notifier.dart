import 'dart:convert';

import 'package:baseapp/core/api/mockapi.dart';
import 'package:flutter/material.dart';

class MockAPINotifier extends ChangeNotifier {
  final MockAPI _mockAPI = new MockAPI();
  List _posts = [];
  List get posts => _posts;

  Future getData() async {
    try {
      _mockAPI.getData().then((value) async {
        final List parsedData = await jsonDecode(value.toString());
        _posts = parsedData;
        print(posts);
        notifyListeners();
      });
    } catch (error) {
      print(error);
    }
  }

  Future getDataById({required String id}) async {
    try {
      _mockAPI.getDataById(id: id);
    } catch (error) {
      print(error);
    }
  }

  Future postData({
    required String id,
    required String title,
    required String body,
  }) async {
    try {
      _mockAPI.postData(title: title, body: body, id: id);
    } catch (error) {
      print(error);
    }
  }

  Future updateData({
    required String id,
    required String title,
  }) async {
    try {
      _mockAPI.updateData(title: title, id: id);
    } catch (error) {
      print(error);
    }
  }

  Future deleteData({
    required String id,
  }) async {
    try {
      _mockAPI.deleteData(id: id);
    } catch (error) {
      print(error);
    }
  }
}
