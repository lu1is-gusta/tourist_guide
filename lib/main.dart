import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/models/app_data.dart';
import 'src/pages/home.dart';
import 'src/pages/preload.dart';
import 'src/pages/search.dart';
import 'src/pages/continent.dart';
import 'src/pages/cities.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => AppData(),
      ),
    ],
    child: MyApp(),
  )
);

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        '/preload': (context) => Preload(),
        '/home': (context) => ScreenHome(),
        '/search': (context) => ScreenSearch(),
        '/continent': (context) => ScreenContinent(),
        '/cities': (context) => ScreenCities(),
      },
      initialRoute: '/preload',
    );
  }
}