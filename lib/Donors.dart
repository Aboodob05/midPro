import 'import.dart';

class Donors extends StatefulWidget {

  @override
  State<Donors> createState() => _DonorsState();
}

class _DonorsState extends State<Donors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[100],
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          donors!.clear();
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Finddonors()),
          );        }, icon: Icon(Icons.arrow_back_sharp)),
        title: Text("Donors",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
    centerTitle: true,
    backgroundColor: Color(0xFFFF5252),
    ),
      body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
           //   Image.asset("assets/background/img2.png",fit: BoxFit.cover),
              Container(
                color: Colors.white60.withOpacity(0.3),
              ),
              ListView.builder(
              itemCount: donors?.length,
                itemBuilder: (context,i){
              return Donorsbox(indx: i);
            }),
        ]
          )
          
      ),
    );


  }
}






