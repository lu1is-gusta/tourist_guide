import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/models/appdata.dart';
import 'src/pages/home.dart';
import 'src/pages/preload.dart';
import 'src/pages/search.dart';

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
      },
      initialRoute: '/preload',
    );
  }
}