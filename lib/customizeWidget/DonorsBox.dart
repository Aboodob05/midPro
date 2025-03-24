import 'package:flutter/material.dart';
import 'package:midpro/FindDonors.dart';
import 'package:midpro/calling.dart';
import 'package:midpro/data.dart';

class Donorsbox extends StatelessWidget {
  final int indx;

  Donorsbox({required this.indx});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,

        child: ListTile(

          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          leading: CircleAvatar(
            backgroundColor: Color(0xFFFF5252),
            child: Icon(Icons.person, color: Colors.white),
          ),

          title: Text(
            donors![indx][0],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.bloodtype, color: Colors.red, size: 18),
                  SizedBox(width: 5),
                  Text(donors![indx][1], style: TextStyle(fontSize: 16)),
                ],
              ),


              Row(
                children: [

                  Icon(Icons.phone, color: Colors.green, size: 18),

                  SizedBox(width: 5),

                  InkWell(
                      child:Text(donors![indx][2], style: TextStyle(fontSize: 16)),
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CallScreen(name: donors![indx][0],)));},),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.red, size: 18),
                  SizedBox(width: 5),
                  Text(donors![indx][3], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}
