import 'package:flutter/material.dart';
class Txtformfild extends StatefulWidget {
  String lbl;
  String hint;
  Icon preIcon;
  Icon? suffIcon;
  void Function(String?) ? data;
  String? Function(String?)? v;
  Txtformfild({required this.lbl, required this.hint, required this.preIcon, this.suffIcon ,this.v,this.data}) ;

  @override
  State<Txtformfild> createState() => _TxtformfildState();
}

class _TxtformfildState extends State<Txtformfild> {
bool b = true;
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(8.0),
      child: TextFormField(

        obscureText:(widget.suffIcon!=null) ? b ?true : false: false ,

        onSaved: widget.data,
        validator: widget.v,
        decoration: InputDecoration(
            hintText: widget.hint,
            label: Text(widget.lbl),
            prefixIcon: widget.preIcon,
            suffixIcon: widget.suffIcon !=null? InkWell(
              child: b?Icon(Icons.closed_caption_disabled_outlined):Icon(Icons.remove_red_eye_outlined),
              onTap: (){
                setState(() {
                  b=!b;
                });
              },) : null,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 3,
                  color: Colors.red

              ),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 3,
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(20),
            )

        ),
      ),
    );
  }
}