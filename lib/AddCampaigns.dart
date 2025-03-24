import 'package:flutter/material.dart';

import 'import.dart';
class AddCampaigns extends StatefulWidget {
  const AddCampaigns({super.key});

  @override
  State<AddCampaigns> createState() => _AddCampaignsState();
}

class _AddCampaignsState extends State<AddCampaigns> {
  int indx =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF5252),
        title: Text("Add Blood Donation Campaign",style: TextStyle(color: Colors.white),),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
                child: Center(
                  child:Icon(Icons.camera_alt,size: 40,)
                  ,),
              ),
              SizedBox(height: 30,),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Campaign Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Text("Add Campaign"))
            ],
          ),
        ),
      ),

      bottomNavigationBar: SalomonBottomBar(
        currentIndex: indx,
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text("Home"),
            selectedColor: Colors.red,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.search_rounded),
            title: Text("Search"),
            selectedColor: Colors.red,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Profile"),
            selectedColor: Colors.red,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.logout),
            title: Text("Logout"),
            selectedColor: Colors.red,
          ),
        ],
        onTap: (v) {
          setState(() {
            indx = v;
            switch (v) {
              case 0:
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Startscreen()), (rout) => false);
                break;
              case 1:
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Finddonors()));
                break;
              case 2:
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                break;
              case 3:
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LoginScreen()), (rout) => false);
                break;
            }
          });
        },
      ),
    );
  }
}
