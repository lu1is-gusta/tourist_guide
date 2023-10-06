import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/appdata.dart';
import '../common/customAppBar.dart';

class ScreenHome extends StatelessWidget{

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context){
    return Consumer<AppData>(
      builder: (context, appdata, child) => Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(
          title: 'teste do app bar',
          drawer: true,
          search: true,
          homeContext: context,
          scaffoldKey: _scaffoldKey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('Welcome to'),
                margin: EdgeInsets.only(bottom: 30),
              ),
              Container(
                child: Image.asset('lib/assets/devstravel_logo.png'),
                width:200
              ),
              Container(
                child: Text('Your travel guide'),
                margin: EdgeInsets.only(top: 30),
              ),
            ]
          ),
        ),
      )
    );
  }
}