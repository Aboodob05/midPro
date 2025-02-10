import 'package:flutter/material.dart';
import'FindDonors.dart';
import 'customizeWidget/DonorsBox.dart';

class Donors extends StatefulWidget {

  @override
  State<Donors> createState() => _DonorsState();
}

class _DonorsState extends State<Donors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          donors!.clear();
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_sharp)),
        title: Text("Donors",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
    centerTitle: true,
    backgroundColor: Colors.red,
    ),
      body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset("assets/origbackgruond.png",fit: BoxFit.cover),
              ListView.builder(
              itemCount: donors?.length,
                itemBuilder: (context,i){
              return Donorsbox(indx: i);
            }),
        ]
          )
          
      ),
    );


  }
}






