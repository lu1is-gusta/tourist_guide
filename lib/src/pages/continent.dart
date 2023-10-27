import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:touristguide/src/common/city_box.dart';
import '../models/app_data.dart';
import '../common/custom_app_bar.dart';
import '../common/custom_drawer.dart';

class ScreenContinent extends StatelessWidget{

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void seeCity (continentContext, continentIndex){

    Navigator.pushNamed(continentContext, '/cities', arguments: continentIndex);
  }

  @override
  Widget build(BuildContext context){
    return Consumer<AppData>(
      builder: (context, appdata, child) => Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(
          title: 'Continent List',
          drawer: true,
          search: true,
          pageContext: context,
          scaffoldKey: _scaffoldKey,
        ),
        drawer: CustomDrawer(
          pageContext: context
        ),
        body: ListView.builder(
          itemCount: appdata.data.length,
          itemBuilder: (context, index){

            var cities = [];

            for(var country in appdata.data[index]['countries']){
              cities.addAll(country['cities']);
            }

            return Padding(
              padding: EdgeInsets.only(left: 10, right: 6),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${appdata.data[index]['name']} (${cities.length})"),

                      TextButton(
                        onPressed: () => seeCity(context, index),
                        child: Text('See cities'),
                      ),
                    ],
                  ),

                  Container(
                    height: 150,
                    margin: EdgeInsets.only(bottom:15),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cities.length,
                      itemBuilder: (cityContext, cityIndex){
                        return CityBox(
                          dataCity: cities[cityIndex],
                          onTap: (){},
                        );
                      }
                    ),
                  )
                ],
              )
            ); 
          },
        ),
      )
    );
  }
}