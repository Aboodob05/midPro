import 'package:flutter/material.dart';

class Campaignsbox extends StatelessWidget {

  int? indx;


  Campaignsbox({required this.indx});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3),
      child:Container(

        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),

        ),
        width: double.infinity,
        height: 420,
        child: Column(
          children: [
            Image.asset("assets/campaigns/camp${indx!+1}.jpg"),

          ],
        )

      ) ,
    );
  }
}