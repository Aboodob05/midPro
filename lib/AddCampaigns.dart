import 'package:flutter/material.dart';

import 'import.dart';
class AddCampaigns extends StatefulWidget {
  const AddCampaigns({super.key});

  @override
  State<AddCampaigns> createState() => _AddCampaignsState();
}

class _AddCampaignsState extends State<AddCampaigns> {
  int indx =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF5252),
        title: Text("Add Blood Donation Campaign",style: TextStyle(color: Colors.white),),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
                child: Center(
                  child:Icon(Icons.camera_alt,size: 40,)
                  ,),
              ),
              SizedBox(height: 30,),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Campaign Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Text("Add Campaign"))
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomBar(indx: indx,)
    );
  }
}
