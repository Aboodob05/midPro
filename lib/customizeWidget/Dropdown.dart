import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
   String hint;
   IconData icon;
   dynamic selectedValue;
   List items;
   Function(dynamic) onChanged;

   Dropdown({required this.hint, required this.icon, required this.selectedValue, required this.items, required this.onChanged,});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        labelText: hint,
        prefixIcon: Icon(icon, color: Colors.redAccent),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      value: selectedValue,
      items: items.map((item) {
        return DropdownMenuItem(
          value: items.indexOf(item),
          child: Text(item),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
