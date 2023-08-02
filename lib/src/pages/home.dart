import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('hello world'),
      ),
    );
  }
}