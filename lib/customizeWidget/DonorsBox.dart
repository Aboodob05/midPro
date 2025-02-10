import 'package:flutter/material.dart';
import 'package:midpro/FindDonors.dart';
import 'package:midpro/data.dart';
import'FindDonors.dart';
class Donorsbox extends StatelessWidget {
  int? indx;


  Donorsbox({required this.indx});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2),
            child:Container(

              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),

              ),
              width: double.infinity,
              height: 50,
              child: Text("${indx!+1}- ${donors![indx!][0]} , ${donors![indx!][1]} , ${donors![indx!][2]} , ${donors![indx!][3]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),

            ) ,
    );
  }
}
