import 'package:flutter/material.dart';
import 'package:midpro/FindDonors.dart';
import 'Appointment.dart';
import 'CampaignScreen.dart';
import 'EnterInfoForDonor.dart';
import 'LoginScreen.dart';
import 'Profile.dart';
import 'StartScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Loginscreen());
  }
}