import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/app_data.dart';
import '../common/custom_app_bar.dart';
import '../common/custom_drawer.dart';

class ScreenHome extends StatelessWidget{

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context){
    return Consumer<AppData>(
      builder: (context, appdata, child) => Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(
          title: 'Home Page',
          drawer: true,
          search: true,
          pageContext: context,
          scaffoldKey: _scaffoldKey,
        ),
        drawer: CustomDrawer(),
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