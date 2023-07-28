import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AppData extends ChangeNotifier{
  var data = [];

  void setData(newData){
    data = newData;
    notifyListeners();
  }

  FutureOr<bool> getData() async{
    var response = await http.get(Uri.parse('https://api.b7web.com.br/flutter1wb/'));

    if(response.statusCode == 200){
      //setData(response.body);
      print(response.body);
    } else {
      throw Exception('Failed get datas');
    }

    return true;
  }
}