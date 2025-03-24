import 'customizeWidget/BottomBar.dart';
import 'import.dart';

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
            child: Image.asset("assets/background/StartScreen.png", fit: BoxFit.cover),
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
                    mainAxisSpacing: 15,
                    children: [
                      InkWell(
                        child: buildGridItem(Icons.person_search, "Find Donors"),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Finddonors()));
                        },
                      ),
                      InkWell(
                        child: buildGridItem(Icons.person_add_alt_1, "Enter as a donor"),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Enterinfofordonor()));
                        },
                      ),
                      InkWell(
                        child: buildGridItem(Icons.local_hospital, "Appointment"),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Appointment()));
                        },
                      ),
                      InkWell(
                        child: buildGridItem(Icons.newspaper, "Latest donation campaigns"),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Campaignscreen()));
                        },
                      ),
                      InkWell(child: buildGridItem(Icons.help, "Ask a doctor"),
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AskDoctorScreen()));},),
                      InkWell(child: buildGridItem(Icons.add, "Add Campaign"),
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddCampaigns()));},),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: BottomBar(indx: indx,),
    );
  }

  Widget buildGridItem(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),

        color: Colors.grey[200],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color:Color(0xFFFF5252)),
          SizedBox(height: 10),
          Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
