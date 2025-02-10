import 'package:flutter/material.dart';
import 'package:midpro/customizeWidget/CampaignsBox.dart';
import'FindDonors.dart';
import 'LoginScreen.dart';
import 'Profile.dart';
import 'StartScreen.dart';
import 'customizeWidget/DonorsBox.dart';

class Campaignscreen extends StatefulWidget {

  @override
  State<Campaignscreen> createState() => _DonorsState();
}

class _DonorsState extends State<Campaignscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          donors!.clear();
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_sharp)),
        title: Text("Campaigns",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
          child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset("assets/origbackgruond.png",fit: BoxFit.cover),
                ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context,i){
                      return Campaignsbox(indx: i);
                    }),
              ]
          ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indx,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.grey,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded,color: Colors.grey,),label: "Search",),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: Colors.grey,),label: "Profile",),
          BottomNavigationBarItem(icon: Icon(Icons.logout,color: Colors.grey,),label: "Logout"),

        ],
        onTap: (v){
          setState(() {
            indx = v;
            switch(v){
              case 0:
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Startscreen()),(rout)=>false);
              case 1:
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Finddonors()));
              case 2:
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile()));

              case 3:
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Loginscreen()),(rout)=>false);


            }
          });
        },

      ),
    );


  }
}






