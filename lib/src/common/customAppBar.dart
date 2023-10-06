import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  String title;
  bool drawer;
  bool search;
  BuildContext homeContext;
  GlobalKey<ScaffoldState> scaffoldKey;

  CustomAppBar({
    this.title = '',
    this.drawer = false,
    this.search = false,
    required this.homeContext,
    required this.scaffoldKey,
  }); 

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context){
    return AppBar(
      title: Text(title, style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      actions: [
        search ?
        IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.search, color: Colors.black, size: 30),
        ) : Container()
      ],
      leading: drawer ? IconButton(
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        }, 
        icon: Icon(Icons.menu, color: Colors.black, size: 30)
      ) : IconButton(
        onPressed: () {
          Navigator.pop(homeContext);
        }, 
        icon: Icon(Icons.arrow_back, color: Colors.black, size: 30)
      ) 
    );
  }
}