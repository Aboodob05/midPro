import 'package:flutter/material.dart';
import 'FindDonors.dart';
import 'LoginScreen.dart';
import 'StartScreen.dart';
class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? d;
  int? indx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/backprofile.png",fit:BoxFit.cover,),
          Column(
            children: [
              SizedBox(height: 100,),
              CircleAvatar(
                radius: 70,
                child: Icon(Icons.person,size: 70,),
              ),
              SizedBox(height: 10,),
              Text("Abdullah Obeidat",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 350),
                Text("-ID : ${Loginscreen.id}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
                SizedBox(height: 20,),
                Text("-Blood Type : A+",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(height: 20,),
                Text("-Age : 19",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(height: 20,),
                Text("-Location : Bani Kenanah",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),


              ],
            ),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: indx!,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.grey,),label: "Home",),
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
