import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart';
import 'src/models/appdata.dart';
import 'src/pages/home.dart';
import 'src/pages/preload.dart';

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
      },
      initialRoute: '/preload',
    );
  }
}