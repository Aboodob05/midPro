import 'package:flutter/material.dart';
import 'StartScreen.dart';
import 'customizeWidget/txtform.dart';


class Loginscreen extends StatefulWidget {
  static String? id ;
  static  String? getdata() => id;




  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [

          Image.asset("assets/blooddonat1.png",fit: BoxFit.cover),
          Container(
            color: Colors.white60.withOpacity(0.2),
          ),

          Form(
            key: key,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 70,),
                  CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 80,
                    child: Icon(Icons.person,size: 120,color: Colors.white,),
                  ),
                  SizedBox(height: 30,),
                  Txtformfild(lbl: "ID", hint: "10 digit serial number", preIcon: Icon(Icons.person),data: (d){
                    setState(() {
                      Loginscreen.id = d;
                    });
                  },v: (v){
                    if(v!.isEmpty || v.length <10){
                      return "invalid id";
                    }
                    return null;
                  },),
                  SizedBox(height: 30,),
                  Txtformfild(lbl: "Password", hint: "********", preIcon: Icon(Icons.password),v: (v){
                    if(v!.isEmpty || v.length<8){
                      return "invalid password";
                    }
                    return null;
                  },),
                  SizedBox(height: 30,),
                  ElevatedButton(
                    onPressed: () {
                      if(key.currentState!.validate()) {
                        key.currentState!.save();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Startscreen()));
                        print(Loginscreen.id);
                      }

                    },

                    child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                  )

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
