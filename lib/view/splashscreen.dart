import 'dart:async';
import 'package:flutter/material.dart';
import 'package:furniture_ui/view/loginscreen.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 60);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginView()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        constraints: BoxConstraints.expand(),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage("assets/splash.PNG"), fit: BoxFit.fill),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 90.0)),
            Container(
                 child: Image(
                   image: new AssetImage("assets/img_7.PNG"),
                   height: 80,
                   width: 50,
                   fit: BoxFit.cover,
                 ),
                ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Divider(
              color: Colors.white,
              height: 15,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Text(
              'INALLTIME',
              style: TextStyle(fontSize: 50.0, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
              height: 15,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Padding(padding: EdgeInsets.only(top: 220.0)),
            SizedBox(
              height: 20,
            ),

            Container(
              child: Image(
                image: new AssetImage("assets/logo1.png"),
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // SleekCircularSlider(
            //   min: 0,
            //   max: 100,
            //   initialValue: 100,
            //   appearance: CircularSliderAppearance(
            //     infoProperties: InfoProperties(
            //         mainLabelStyle: TextStyle(
            //       color: Colors.grey,
            //       fontSize: 25,
            //     )),
            //     customColors: CustomSliderColors(
            //         dotColor: Colors.white,
            //         progressBarColor: Colors.black,
            //         shadowColor: Colors.white,
            //         trackColor: Colors.white),
            //     spinnerDuration: 5,
            //     animDurationMultiplier: 2,
            //     animationEnabled: true,
            //     startAngle: 0.0,
            //     angleRange: 360,
            //   ),
            // ),
            // SizedBox(
            //   height: 20.0,
            // ),
            // Text(
            //   'Initializing app...',
            //   style: TextStyle(color: Colors.grey, fontSize: 20),
            // ),
          ],




        ),
      ),
      ),


    );
  }
}
