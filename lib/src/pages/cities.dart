import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:touristguide/src/common/city_box.dart';
import '../models/app_data.dart';
import '../common/custom_app_bar.dart';
import '../common/custom_drawer.dart';
import '../common/city_box.dart';

class ScreenCities extends StatelessWidget{

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void cityInformation (continentContext, cityData){

    Navigator.pushNamed(continentContext, '/city_information', arguments: cityData);

  }

  @override
  Widget build(BuildContext context){

    final continentIndex = ModalRoute.of(context)!.settings.arguments as int;
    
    return Consumer<AppData>(
      builder: (context, appdata, child) {
        var cities = [];

        for(var country in appdata.data[continentIndex]['countries']){
          cities.addAll(country['cities']);
        }

        return Scaffold(
          key: _scaffoldKey,
          appBar: CustomAppBar(
            title: '${appdata.data[continentIndex]['name']} (${cities.length})',
            drawer: false,
            search: true,
            pageContext: context,
            scaffoldKey: _scaffoldKey,
          ),
          drawer: CustomDrawer(
            pageContext: context
          ),
          body: GridView.count(
            crossAxisCount: 3,
            padding: EdgeInsets.only(left: 10),
            children: List.generate(cities.length, (index) {
              return CityBox(
                dataCity: cities[index],
                onTap: (cityData){
                  cityInformation(context, cityData);
                },
              );
            }),
          )
        );
      }
    );
  }
}