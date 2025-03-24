import 'package:flutter/material.dart';
import 'import.dart';

class AskDoctorScreen extends StatefulWidget {
  @override
  State<AskDoctorScreen> createState() => _AskDoctorScreenState();
}

class _AskDoctorScreenState extends State<AskDoctorScreen> {
  final List<Map<String, String>> doctors = [
    {'name': 'Dr. Ahmed Ali', 'specialty': 'Internal Medicine Specialist'},
    {'name': 'Dr. Sarah Mohamed', 'specialty': 'Cardiologist'},
    {'name': 'Dr. Khaled Hassan', 'specialty': 'Pediatrician'},
  ];

  @override
  Widget build(BuildContext context) {
    int indx =0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF5252),
        title: Text('Ask a Doctor',style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.person, size: 40,color: Color(0xFFFF5252),),
              title: Text(doctor['name']!),
              subtitle: Text(doctor['specialty']!),
              trailing: IconButton(
                icon: Icon(Icons.chat_bubble_outline),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ChatScreen(doctorName: doctor['name']!),
                  //   ),
                  // );
                },
              ),
            ),
          );
        },
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

