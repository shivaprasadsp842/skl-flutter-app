
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
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginView()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        constraints: BoxConstraints.expand(),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage("assets/splash.PNG"), fit: BoxFit.fill),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 50.0)),
            Container(
              child: Image(
                image: new AssetImage("assets/img_8.png"),
                height: 80,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Padding(padding: EdgeInsets.fromLTRB(35.0, 0, 35, 0),
              child: Divider(
                color: Colors.white,
                height: 15,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
            ),
            Text(
              'INALLTIME',
              style: TextStyle( fontFamily: 'Inter',fontSize: 45.0, color: Colors.white, fontWeight: FontWeight.w700),
            ),
            Padding(padding: EdgeInsets.fromLTRB(35.0, 0, 35, 0),
              child: Divider(
              color: Colors.white,
              height: 15,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            ),

            Text(
              'A d d  V a l u e  T o  L i f e',
              style: TextStyle( fontFamily: 'Inter',fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 05, 10, 05),
              child: Image(
                image: new AssetImage("assets/undraw_dreamer_re_9tua 1.png"),
                height: MediaQuery.of(context).size.height*0.35,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                //decoration: const BoxDecoration(color: Colors.black),
                margin: EdgeInsets.all(0.0),
                // padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  // color:Colors.white,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.black, // foreground
                    padding: const EdgeInsets.fromLTRB(70, 15, 70, 15),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(60.0),
                    ),
                  ),
                  onPressed: () {

                  },
                  child: const Text(
                    'Made In India',
                    style: TextStyle( fontFamily: 'Inter',
                      color: Colors.black,
                      fontSize: 20,

                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
// //import 'dart:async';
// import 'package:flutter/material.dart';
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() => StartState();
// }
//
// class StartState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return initScreen(context);
//   }
//   //
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   startTimer();
//   // }
//   //
//   // startTimer() async {
//   //   var duration = Duration(seconds: 5);
//   //   return new Timer(duration, route);
//   // }
//   //
//   // route() {
//   //   Navigator.pushReplacement(
//   //       context, MaterialPageRoute(builder: (context) => LoginView()));
//   // }
//
//   initScreen(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         constraints: BoxConstraints.expand(),
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("assets/splashscreen.png"), fit: BoxFit.fill),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               // child: Image.asset("assets/logo.png"),
//             ),
//             Padding(padding: EdgeInsets.only(top: 20.0)),
//             // Text(
//             //   'Your App Name',
//             //   style: TextStyle(fontSize: 50.0, color: Colors.white),
//             // ),
//             const Padding(padding: EdgeInsets.only(top: 220.0)),
//             const SizedBox(
//               height: 20,
//             ),
//             // SleekCircularSlider(
//             //   min: 0,
//             //   max: 100,
//             //   initialValue: 100,
//             //   appearance: CircularSliderAppearance(
//             //     infoProperties: InfoProperties(
//             //         mainLabelStyle: TextStyle(
//             //           color: Colors.grey,
//             //           fontSize: 25,
//             //         )),
//             //     customColors: CustomSliderColors(
//             //         dotColor: Colors.white,
//             //         progressBarColor: Colors.black,
//             //         shadowColor: Colors.white,
//             //         trackColor: Colors.white),
//             //     spinnerDuration: 5,
//             //     animDurationMultiplier: 2,
//             //     animationEnabled: true,
//             //     startAngle: 0.0,
//             //     angleRange: 360,
//             //   ),
//             // ),
//             SizedBox(
//               height: 20.0,
//             ),
//             const Text(
//               'Initializing app...',
//               style: TextStyle(color: Colors.grey, fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
