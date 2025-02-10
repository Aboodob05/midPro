import 'package:flutter/material.dart';

import 'customizeWidget/txtform.dart';

class Appointment extends StatefulWidget {

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  String? bloodType ;
  String? hosp;
  List hospitals = ["Princess Basma Educational Hospital",
    "Princess Rahma Educational Hospital",
    "Al-Yarmouk Governmental Hospital",
    "Irbid Islamic Hospital",
    "Ibn Al-Nafis Hospital",
    "King Abdullah University Hospital",];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
        Image.asset("assets/origbackgruond.png",fit: BoxFit.cover),
    // Container(
    //   color: Colors.white60.withOpacity(0.5),
    // ),
    SingleChildScrollView(
    child: SafeArea(
    child: Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children: [
    ElevatedButton(onPressed: (){
    Navigator.of(context).pop();
    }, child: Icon(Icons.arrow_back_outlined)),
    SizedBox(height: 130,),
      Txtformfild(lbl: "ID", hint: "10 digit serial number", preIcon: Icon(Icons.person)),
      SizedBox(height: 30,),


      Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonFormField(
          hint: Text("select a Hospital"),
          icon: Icon(Icons.local_hospital,),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.red, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.red, width: 2),
            ),
          ),

          value:hosp,

          items: hospitals.map((i) {
            return DropdownMenuItem(
              child: Text(i),
              value: i,
            );
          }).toList(),
          onChanged: (v) {
            setState(() {
              hosp = v as String;
            });
          },
        ),
      ),
      SizedBox(height: 30,),
      Center(
        child: ElevatedButton(
          onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Your Appointment has been saved successfully")));

          },
          style: ElevatedButton.styleFrom(
            fixedSize: Size(100, 70),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text("Save",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
      )



      ]
            ),
         ),
        ),
      ]
     ),
    );
  }
}
