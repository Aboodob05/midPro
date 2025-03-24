import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  String name;
   CallScreen({required this.name});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF1565C0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 50),
            child: Column(
              children: [
                CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey[300],
                child: Icon(Icons.person,size: 50,)
            ),
                SizedBox(height: 20,),
                Text(
                  widget.name,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  "Calling Now...",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.mic_off, color: Colors.blue[900]),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.dialpad, color: Colors.blue[900]),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.volume_up, color: Colors.blue[900]),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.add_call, color: Colors.blue[900]),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.videocam, color: Colors.blue[900]),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.contacts, color: Colors.blue[900]),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(bottom: 50),
            child: InkWell(
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.phone,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              onTap: (){
                Navigator.of(context).pop();
              }
            ),
          ),
        ],
      ),
    );
  }
}