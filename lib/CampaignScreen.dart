import 'import.dart';

class Campaignscreen extends StatefulWidget {

  @override
  State<Campaignscreen> createState() => _DonorsState();
}

class _DonorsState extends State<Campaignscreen> {
  int indx =0;
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
                Image.asset("assets/background/origbackgruond.png",fit: BoxFit.cover),
                ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context,i){
                      return Campaignsbox(indx: i);
                    }),
              ]
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






