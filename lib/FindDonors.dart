import'import.dart';


String? blood;
int? locat;
List? donors = [];

class Finddonors extends StatefulWidget {
  @override
  State<Finddonors> createState() => _FinddonorsState();
}

class _FinddonorsState extends State<Finddonors> {
  int indx = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/background/FindDonors2.png", fit: BoxFit.fill),
          // Positioned(
          //   top: 50,
          //   left: MediaQuery.of(context).size.width/2-50,
          //  // child: Lottie.network("https://assets2.lottiefiles.com/packages/lf20_fbrmwpnk.json"),
          // ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      },
                    child: Icon(Icons.arrow_back_outlined),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 145),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("   Select Your Blood Type :",textAlign: TextAlign.left,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  bloodGroupButton("A+"),
                                  bloodGroupButton("O+"),
                                  bloodGroupButton("B+"),
                                  bloodGroupButton("AB+"),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  bloodGroupButton("A-"),
                                  bloodGroupButton("O-"),
                                  bloodGroupButton("B-"),
                                  bloodGroupButton("AB-"),
                                ],
                              ),

                            ],
                          ),

                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),

                          child:Dropdown(
                            hint: "Select Your Location",
                            icon: Icons.location_on,
                            selectedValue: locat,
                            items: location,
                            onChanged: (value) {
                              setState(() => locat = value);
                            },
                          ),
                        ),

                        SizedBox(height: 50),
                        ElevatedButton(
                          onPressed: () {
                            bfs(locat);
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (
                                context) => Splashscreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            fixedSize: Size(170, 70),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_search_rounded,
                                size: 25,
                              ),
                              SizedBox(width: 10,),
                              Text("Find Donors",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
      )
      ,
    );
  }

  Widget bloodGroupButton(String type) {
    return GestureDetector(
      onTap: () {
        setState(() {
          blood = type;
        });
      },
      child: Container(
        width: 80,
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: blood == type ? Colors.red : Colors.white,
          border: Border.all(color: Colors.black,width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          type,
          style: TextStyle(
              color: blood == type ? Colors.white : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
