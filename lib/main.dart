
import 'package:flutter/material.dart';
import 'package:furniture_ui/splashscreen.dart';
import 'package:furniture_ui/view/homescreen.dart';

import 'booking/add_predefined_appointments.dart';
import 'booking/all_booking_appointment.dart';
import 'chat/define_chat_consultant_price.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:ThemeData(
        fontFamily: 'Inter',
      ),
      debugShowCheckedModeBanner: true,
     // home: AllBookingAppointment(),
   //home: AddPredefinedViews(),
 home: SplashScreen(),
    );
  }
}

