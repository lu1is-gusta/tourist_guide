import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget{
  CustomDrawer({
    required this.pageContext,
  });
  
  final BuildContext pageContext;

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  'DevsTravel',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),

                Text(
                  'Version: 1.0.0',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            
            decoration: BoxDecoration(
              color: Colors.blue
            ),
          ),

          ListTile(
            title: Text('Choose continent'),
            leading: Icon(Icons.public, color: Colors.black,),
            onTap: () {
              Navigator.pushNamed(pageContext, '/continent');
            },
          ),

          ListTile(
            title: Text('Search cities'),
            leading: Icon(Icons.search, color: Colors.black,),
            onTap: () {
              Navigator.pushNamed(pageContext, '/search');
            },
          ),

          ListTile(
            title: Text('Cities saved'),
            leading: Icon(Icons.favorite, color: Colors.black,),
            onTap: () {
              Navigator.pushNamed(pageContext, '/favorite');
            },
          ),
        ]
      ),
    );
  }
}