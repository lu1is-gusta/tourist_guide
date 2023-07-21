import 'package:flutter/material.dart';

class AppData extends ChangeNotifier{
  var data = [];

  void setData(newData){
    data = newData;
    notifyListeners();
  }
}