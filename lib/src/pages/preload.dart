import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../models/appdata.dart';

class Preload extends StatefulWidget {

  @override
  State<Preload> createState() => _PreloadState();
}

class _PreloadState extends State<Preload> {
  bool load = true;

  void responseInfo() async{
    await Future.delayed(Duration(milliseconds: 2)); //espera o build carregar

    final response = await Provider.of<AppData>(context, listen: false).getData();

    if(response){
      setState(() {
        Navigator.pushReplacementNamed(context, '/home'); //impede que o usuário volte a página
      });
    } else {
      setState(() {
        load = false;
      });
    }
  }

  void initState() {
    super.initState();
    responseInfo();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('lib/assets/devstravel_logo.png'), width:200),

            load ? Container(
              padding: EdgeInsets.all(16.0),
              child: Text('Loading information...'),
            ) : Container(),

            load ? CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ) : Container(),
            
            !load ? ElevatedButton(
              child: Text('Try again'),
              onPressed: (){
                setState(() {
                  load = true;
                });
                responseInfo();
              },
            ) : Container(),
          ]
        ),
      ),
    );
  }
}