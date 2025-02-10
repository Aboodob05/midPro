import 'package:flutter/material.dart';
import 'package:midpro/StartScreen.dart';
import 'Donors.dart';
import'Donors.dart';
import 'Bfs.dart';
import 'LoginScreen.dart';
import 'Profile.dart';
List<String> bloodTyps =["A+","A-","B+","B-","O-","O+","AB+","AB-"];
List<String> location =  ["","Bani Kinanah","Alramtha","irbid city","Alwasatea","Alshonah","Bani 3baid","Almazar","Altaibah","Alkorah"];

String? blood ;
int? locat;
List? donors =[];
int indx =0;

class Finddonors extends StatefulWidget {

  @override
  State<Finddonors> createState() => _FinddonorsState();
}

class _FinddonorsState extends State<Finddonors> {
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
              //   color: Colors.white60.withOpacity(0.0),
              // ),
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Icon(Icons.arrow_back_outlined)),
                    Center(
                      child: Column(
                        children: [
                          Icon(Icons.bloodtype,size: 150,color: Colors.redAccent,),
                         /// Icon(Icons.bloodtype,size: 100,color: Colors.red,),
                          SizedBox(height: 100,),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButtonFormField(


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

                              value: blood,

                              items: bloodTyps.map((i) {
                                return DropdownMenuItem(
                                  child: Text(i),
                                  value: i,
                                );
                              }).toList(),
                              onChanged: (v) {
                                setState(() {
                                  blood = v as String;
                                });
                              },
                            ),
                          ),
                  
                          SizedBox(height: 50,),
                  
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButtonFormField(

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

                              value: locat,

                              items: location .map((i) {
                                return DropdownMenuItem(
                                  child: Text(i),
                                  value: location.indexOf(i),
                                );
                              }).toList(),
                              onChanged: (v) {
                                setState(() {
                                  locat = v;
                                });
                              },
                            ),
                          ),
                          SizedBox(height: 50,),
                  
                          ElevatedButton(
                            onPressed: () {
                              bfs(locat);
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Donors()));
                  
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(100, 70),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Icon(Icons.person_search_rounded,size: 40,),
                          )
                  
                  
                  
                  
                        ],
                      ),
                    ),
                  ],
                              ),
                ),
              ),
          ]
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
