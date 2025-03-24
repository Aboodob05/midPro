import 'import.dart';

class Enterinfofordonor extends StatefulWidget {
  String? bloodType;
  int? location;

  @override
  State<Enterinfofordonor> createState() => _EnterinfofordonorState();
}

class _EnterinfofordonorState extends State<Enterinfofordonor> {
  final _formKey = GlobalKey<FormState>();
  int indx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/background/EnterDonor.png", fit: BoxFit.fill),
          SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back_outlined),
                      ),
              SizedBox(height: 160,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("   Enter Your Information :",textAlign: TextAlign.left,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                      ),
                      Txtformfild(lbl: "Full Name", hint: "Enter your name", preIcon: Icon(Icons.person),
                        v: (value) {
                          if (value!.isEmpty) {
                            return "Please enter a valid name";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      Txtformfild(lbl: "Phone Number", hint: "07********", preIcon: Icon(Icons.phone),
                        v: (value) {
                          if (value!.isEmpty || value.length != 10 ||!RegExp(r'^\d+$').hasMatch(value)) {
                            return "Enter a valid phone number";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      Dropdown(hint: "Select Your Blood Type", icon: Icons.bloodtype, selectedValue: widget.bloodType, items: bloodTyps,
                        onChanged: (value) {
                          setState(() => widget.bloodType = value);
                        },
                      ),
                      SizedBox(height: 20),
                      Dropdown(hint: "Select Your Location", icon: Icons.location_on, selectedValue: widget.location, items: location,
                        onChanged: (value) {
                          setState(() => widget.location = value);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Your information has been saved successfully")),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text("Save", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar:BottomBar(indx: indx,)
    );
  }
}
