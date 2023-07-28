import 'package:flutter/material.dart';

class Preload extends StatefulWidget {

  @override
  State<Preload> createState() => _PreloadState();
}

class _PreloadState extends State<Preload> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('lib/assets/devstravel_logo.png'), width:200),
          ]
        ),
      ),
    );
  }
}