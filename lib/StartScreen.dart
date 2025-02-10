import 'package:flutter/material.dart';
import 'package:midpro/Appointment.dart';
import 'package:midpro/LoginScreen.dart';
import 'CampaignScreen.dart';
import 'EnterInfoForDonor.dart';
import 'FindDonors.dart';
import 'Profile.dart';


class Startscreen extends StatefulWidget {
  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  int indx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/background2.png", fit: BoxFit.cover),
          ),
          Column(
            children: [
              SizedBox(height: 200),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      InkWell(child: buildGridItem(Icons.person_search, "Find Donors"),
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Finddonors()));}),

                      InkWell(child: buildGridItem(Icons.person_add_alt_1, "Enter as a donor"),
                        onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Enterinfofordonor()));
                        },
                      ),
                      InkWell(child: buildGridItem(Icons.local_hospital, "Appointment"),onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Appointment()));
                      },),
                      InkWell(child: buildGridItem(Icons.newspaper, "Latest donation campaigns"),onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Campaignscreen()));
                      },),

                      buildGridItem(Icons.help, "Ask a doctor"),
                      buildGridItem(Icons.emergency, "Emergency donation"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: indx,
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

  Widget buildGridItem(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color: Colors.red),
          SizedBox(height: 10),
          Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
