import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/app_data.dart';
import '../common/custom_app_bar.dart';
import '../common/custom_drawer.dart';

class ScreenCityInformation extends StatelessWidget{

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context){

    Map<String, dynamic> cityData = ModalRoute.of(context)!.settings.arguments as dynamic;

    print(cityData);

    return Consumer<AppData>(
      builder: (context, appdata, child) => Scaffold(
        key: _scaffoldKey,
        body: Container()
      )
    );
  }
}