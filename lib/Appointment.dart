import 'import.dart';


class Appointment extends StatefulWidget {

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  DateTime date = DateTime.now();
  String? bloodType ;
  String? hosp;
  int indx = 0;

  List hospitals = ["Princess Basma Educational Hospital",
    "Princess Rahma Educational Hospital",
    "Al-Yarmouk Governmental Hospital",
    "Irbid Islamic Hospital",
    "Ibn Al-Nafis Hospital",
    "King Abdullah University Hospital",];

  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
        Image.asset("assets/background/appointment.png",fit: BoxFit.cover),
    // Container(
    //   color: Colors.white60.withOpacity(0.5),
    // ),
    SingleChildScrollView(
    child: SafeArea(
    child: Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children: [
    TextButton(onPressed: (){
    Navigator.of(context).pop();
    }, child: Icon(Icons.arrow_back_outlined)),
    SizedBox(height: 30,),

    SizedBox(height: 150,),
      Form(
        key: key,
        child: Txtformfild(lbl: "ID", hint: "10 digit serial number", preIcon: Icon(Icons.person),v:(v) {
          if (v!.isEmpty || v.length != 10 || !RegExp(r'^\d+$').hasMatch(v)) {
            return "Invalid ID";
          }
        }
            ),
      ),
      SizedBox(height: 30,),


      Padding(
        padding: const EdgeInsets.all(8.0),
        child:Dropdown(hint: "Select a Hospital", icon: Icons.local_hospital, selectedValue: hosp, items: hospitals,
          onChanged: (value) {
            setState(() => hosp = value);
          },
        ),
      ),
      SizedBox(height: 30,),
      Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.date_range,color: Color(0xFFFF5252),),
                      SizedBox(width: 20,),
                      Text("${date.day} / ${date.month} / ${date.year}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
      Center(
        child: ElevatedButton(
            onPressed: () async {
              DateTime? newDate = await showDatePicker(
                context: context,
                initialDate: date,
                firstDate: DateTime.now(),
                lastDate: DateTime(2026),
              );
              if (newDate != null) {
                setState(() {
                  date = newDate;
                });
              }
            },
          child: Text("Select Date"),
        )

      ),
      SizedBox(height: 30,),
      Center(
        child: ElevatedButton(
          onPressed: () {
            if(key.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
                  "Your Appointment has been saved successfully")));
            }
          },
          style: ElevatedButton.styleFrom(
            fixedSize: Size(150, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text("Save",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
      )



      ]
            ),
         ),
        ),
      ]
     ),


      bottomNavigationBar: BottomBar(indx: indx,)
    );
  }
}
