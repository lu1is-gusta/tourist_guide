import 'package:flutter/material.dart';

class CityBox extends StatelessWidget {
  CityBox({
    required this.dataCity,
    required this.onTap
  });

  final dataCity;
  final Function onTap;

  @override
  Widget build(BuildContext context){

    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10, right: 10),
      child: GestureDetector(
        onTap: (){
          onTap(dataCity);
        },
        child: Stack(
          children: [

            AspectRatio(
              aspectRatio: 1/1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  dataCity['places'][0]['img'],
                  fit: BoxFit.cover,
                ),
              )
            ),

            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black]
                  )
                ),
              )
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: 10,
              child: Text(
                dataCity['name'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}