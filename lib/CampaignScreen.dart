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


      bottomNavigationBar: BottomBar(indx: indx,)
    );


  }
}






