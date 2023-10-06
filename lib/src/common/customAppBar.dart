import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  CustomAppBar({
    this.title = '',
    this.drawer = false,
    this.search = false,
    required this.pageContext,
    required this.scaffoldKey,
  }); 

  final String title;
  final bool drawer;
  final bool search;
  final BuildContext pageContext;
  final GlobalKey<ScaffoldState> scaffoldKey;

  void searchPage(){
    Navigator.popAndPushNamed(pageContext, '/search');
  }

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
          onPressed: searchPage, 
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
          Navigator.pop(pageContext);
        }, 
        icon: Icon(Icons.arrow_back, color: Colors.black, size: 30)
      ) 
    );
  }
}