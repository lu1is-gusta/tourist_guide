import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/app_data.dart';
import '../common/custom_app_bar.dart';

class ScreenSearch extends StatelessWidget{

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context){
    return Consumer<AppData>(
      builder: (context, appdata, child) => Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(
          title: 'search for a city',
          drawer: true,
          pageContext: context,
          scaffoldKey: _scaffoldKey,
        ),
        drawer: Drawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('teste'),
            ]
          ),
        ),
      )
    );
  }
}