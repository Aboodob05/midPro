import 'package:flutter/material.dart';
import 'package:midpro/customizeWidget/txtform.dart';

import 'FindDonors.dart';
import 'customizeWidget/DonorsBox.dart';

class Enterinfofordonor extends StatefulWidget {
  String? bloodType;
  int? location;
  @override
  State<Enterinfofordonor> createState() => _EnterinfofordonorState();
}

class _EnterinfofordonorState extends State<Enterinfofordonor> {
  int c=0;
  final savkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/blooddonat1.png",fit: BoxFit.cover),
          Container(
            color: Colors.white60.withOpacity(0.3),
          ),
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
                  Form(
                    key: savkey,
                      child: Column(
                    children: [
                      Txtformfild(lbl: "Name", hint: "------", preIcon: Icon(Icons.person),v:(n){
                        if(n!.isEmpty){
                          return "envaled name";
                        }
                        return null;
                      }),


                  SizedBox(height: 30,),
                  Txtformfild(lbl: "Phone", hint: "07********", preIcon: Icon(Icons.phone),v:(p){
                    if(p!.isEmpty || p.length <10){
                      return "envaled phone number";
                    }
                    return null;
                  }),
                  ]
                  )
                  ),
                  SizedBox(height: 30,),
                  DropdownButtonFormField(
                    hint: Text("select your blood type"),
                    icon: Icon(Icons.bloodtype,),
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
              
                    value: widget.bloodType,
              
                    items: bloodTyps.map((i) {
                      return DropdownMenuItem(
                        child: Text(i),
                        value: i,
                      );
                    }).toList(),
                    onChanged: (v) {
                      setState(() {
                        widget.bloodType = v as String;
                      });
                    },
                  ),
              
                  SizedBox(height: 30,),
              
                  DropdownButtonFormField(
              
                    hint: Text("select your location"),
                    icon: Icon(Icons.location_on,),
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
              
                    value: widget.location,
              
                    items: location .map((i) {
                      return DropdownMenuItem(
                        child: Text(i),
                        value: location.indexOf(i),
                      );
                    }).toList(),
                    onChanged: (v) {
                      setState(() {
                       widget.location = v ;
                      });
                    },
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if(savkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Your information has been saved successfully")));
                        }
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
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
