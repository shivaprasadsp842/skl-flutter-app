import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';

import 'add_predefined_appointments.dart';
import 'booking_appointment_views.dart';
import 'check_availability.dart';

class AllPredefinedAppointment extends StatelessWidget {
  AllPredefinedAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home:Scaffold(
        backgroundColor:  Color(0xFFEBBF8B),
    appBar: PreferredSize(
    preferredSize: Size.fromHeight(40.0), // here the desired height
    child:  Padding(
    padding: EdgeInsets.fromLTRB(5, 8, 0, 6),
    child:  AppBar(
            //   backgroundColor: Color(0xFFEBBF8B),
            backgroundColor:Color.fromRGBO(235, 191, 139, 1),
            elevation: 0,
            flexibleSpace: SafeArea(
              child: Container(
                padding: EdgeInsets.only(right: 16),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  BookingAppointmentView()),
                        );
                      },

                      child: CircleAvatar(
                        backgroundColor: Color(0xFFE5E5E5),
                        child:     Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),


                    ),

                    Text('Back', style:
                    TextStyle(color: Color(0xFFE5E5E5),fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 15), textAlign: TextAlign.center),


                  ],
                ),
              ),
            ),
            // Icon(Icons.settings,color: Colors.black54,),
          ),
        ),
        ),
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: PredefinedCheckStateful(),
          ),
        ),

      ),
    );
  }
}
class PredefinedCheckStateful extends StatefulWidget {
  const PredefinedCheckStateful({Key? key}) : super(key: key);

  @override
  State<PredefinedCheckStateful> createState() => _PredefinedCheckStatefulState();
}

class _PredefinedCheckStatefulState extends State<PredefinedCheckStateful> {

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: IntrinsicHeight(
          child:  Container(
            color: Color.fromRGBO(231, 204, 134, 0.7),
            // padding: const EdgeInsets.fromLTRB(10, 0, 10, 05),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[


                Image(
                  image: new AssetImage("assets/stepper1.PNG"),
                  width: double.infinity,
                  // height: 30,
                  // color: null,
                  //fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                ),

                SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
              child:Container(
        height: 65,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),


                  child:   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   //crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: [
                     Align(
                       alignment: Alignment.centerLeft,

                       child: Container(
                         padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),
                         child:  Text("Create New PD-Appointment",
                           style: TextStyle(
                               fontWeight: FontWeight.w700,fontFamily: 'Inter',
                               fontSize: 15, color: Colors.black),),

                       ),
                     ),

                     Padding(
                       padding: EdgeInsets.only(left: 0, right: 10, top: 0, bottom:0),
                       child: CircleAvatar(
                         backgroundColor: Color(0xFFBB8CD1),
                         radius: 20,
                         child:IconButton(
                             icon: new Image.asset('assets/img_35.png', height: 18,width: 20,),
                             onPressed: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => AddPredefinedViews()),
                               );
                             },
                           ), //Text
                       ),
                     ),




                   ],
                 ),
                 ),
                 ),

                SizedBox(height: 10.0,),
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image(
                        image: new AssetImage("assets/gradient.png"),
                        // width: 30,
                        height: 50,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        // color: null,
                        //fit: BoxFit.scaleDown,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                        child: Text(
                          'Your Pre-Defined Appointments',
                          style: TextStyle(color: Colors.white54,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        )),
                  ],
                ),


          Container(
            //color: ,
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 05),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[


                Align(
                  alignment: Alignment.centerLeft,

                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 45, 05),
                    child: Text(
                      "Invite For Birthday party", style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter'
                    ),
                    ),

                  ),
                ),


                Container(
                  height: 193,
                  child:Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    child:   Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: new AssetImage("assets/img_29.png"),
                            width: MediaQuery.of(context).size.width*0.59,
                            height: 176,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                          SizedBox(width: 8,),

                    Container(
                      width: MediaQuery.of(context).size.width*0.29,
                      child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            //  mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 0,),
                              Container(
                                height: 95,
                                width: MediaQuery.of(context).size.width*1.0,
                                padding: EdgeInsets.fromLTRB(8,6,9,7),
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Text(
                                  "Turn all your problems into possiblities", style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Inter', height: 1.1,
                                ),
                                ),
                              ),



                              Align(
                                alignment: Alignment.bottomCenter,
                                child:  Container(
                                  height: 32,
                                  width: MediaQuery.of(context).size.width*1.0,
                                  //decoration: const BoxDecoration(color: Colors.black),
                                  margin: EdgeInsets.fromLTRB(0, 05, 0, 0),
                                  // padding: EdgeInsets.all(12.0),
                                  decoration:BoxDecoration(
                                    borderRadius:BorderRadius.circular(8),
                                    // color:Colors.white,

                                  ),
                                  child: ElevatedButton(

                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF8FDA30),// background
                                      onPrimary: Colors.black, // foreground
                                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      // Navigator.push(
                                      // context,
                                      // MaterialPageRoute(builder: (context) => VideoPlayerApp()),
                                      // );
                                    },
                                    child: const Text('Rs. 2000 / Hour',
                                      style: TextStyle(
                                        color:Colors.black,
                                        fontSize:10,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),

                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment.bottomCenter,
                                child:  Container(
                                  height: 34,
                                  width: MediaQuery.of(context).size.width*1.0,
                                  //decoration: const BoxDecoration(color: Colors.black),
                                  margin: EdgeInsets.fromLTRB(0, 05, 0, 0),
                                  // padding: EdgeInsets.all(12.0),
                                  decoration:BoxDecoration(
                                    borderRadius:BorderRadius.circular(8),
                                    // color:Colors.white,

                                  ),
                                  child: ElevatedButton(

                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xffD08328), // background
                                      onPrimary: Colors.black, // foreground
                                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => AddPredefinedViews()),
                                      );
                                    },
                                    child: const Text('EDIT DETAILS',
                                      style: TextStyle(
                                        color:Colors.white,
                                        fontSize:10,fontFamily: 'Inter',

                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),

                                  ),
                                ),
                              ),
                            ],
                          )
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10.0,),

                Align(
                  alignment: Alignment.centerLeft,

                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 45, 05),
                    child: Text(
                      "Invite As A Speaker / Trainer ", style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter'
                    ),
                    ),

                  ),
                ),


                Container(
                  height: 193,
                  child:Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    child:   Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: new AssetImage("assets/Rectangle 2393.png"),
                            width: MediaQuery.of(context).size.width*0.59,
                            height: 176,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                          SizedBox(width: 8,),

                          Container(
                              width: MediaQuery.of(context).size.width*0.29,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                //  mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 0,),
                                  Container(
                                    height: 95,
                                    width: MediaQuery.of(context).size.width*1.0,
                                    padding: EdgeInsets.fromLTRB(8,6,9,7),
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Text(
                                      "Turn all your problems into possiblities", style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Inter', height: 1.1,
                                    ),
                                    ),
                                  ),



                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child:  Container(
                                      height: 32,
                                      width: MediaQuery.of(context).size.width*1.0,
                                      //decoration: const BoxDecoration(color: Colors.black),
                                      margin: EdgeInsets.fromLTRB(0, 05, 0, 0),
                                      // padding: EdgeInsets.all(12.0),
                                      decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(8),
                                        // color:Colors.white,

                                      ),
                                      child: ElevatedButton(

                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xFF8FDA30),// background
                                          onPrimary: Colors.black, // foreground
                                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          // Navigator.push(
                                          // context,
                                          // MaterialPageRoute(builder: (context) => VideoPlayerApp()),
                                          // );
                                        },
                                        child: const Text('Rs. 2000 / Hour',
                                          style: TextStyle(
                                            color:Colors.black,
                                            fontSize:10,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child:  Container(
                                      height: 34,
                                      width: MediaQuery.of(context).size.width*1.0,
                                      //decoration: const BoxDecoration(color: Colors.black),
                                      margin: EdgeInsets.fromLTRB(0, 05, 0, 0),
                                      // padding: EdgeInsets.all(12.0),
                                      decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(8),
                                        // color:Colors.white,

                                      ),
                                      child: ElevatedButton(

                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffD08328), // background
                                          onPrimary: Colors.black, // foreground
                                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => AddPredefinedViews()),
                                          );
                                        },
                                        child: const Text('EDIT DETAILS',
                                          style: TextStyle(
                                            color:Colors.white,
                                            fontSize:10,fontFamily: 'Inter',

                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10.0,),


                Align(
                  alignment: Alignment.centerLeft,

                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 45, 05),
                    child: Text(
                      "One-To-One Consultation", style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter'
                    ),
                    ),

                  ),
                ),


                Container(
                  height: 193,
                  child:Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    child:   Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: new AssetImage("assets/Rectangle 2396.png"),
                            width: MediaQuery.of(context).size.width*0.59,
                            height: 176,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                          SizedBox(width: 8,),

                          Container(
                              width: MediaQuery.of(context).size.width*0.29,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                //  mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 0,),
                                  Container(
                                    height: 95,
                                    width: MediaQuery.of(context).size.width*1.0,
                                    padding: EdgeInsets.fromLTRB(8,6,9,7),
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Text(
                                      "Turn all your problems into possiblities", style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Inter', height: 1.1,
                                    ),
                                    ),
                                  ),



                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child:  Container(
                                      height: 32,
                                      width: MediaQuery.of(context).size.width*1.0,
                                      //decoration: const BoxDecoration(color: Colors.black),
                                      margin: EdgeInsets.fromLTRB(0, 05, 0, 0),
                                      // padding: EdgeInsets.all(12.0),
                                      decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(8),
                                        // color:Colors.white,

                                      ),
                                      child: ElevatedButton(

                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xFF8FDA30),// background
                                          onPrimary: Colors.black, // foreground
                                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          // Navigator.push(
                                          // context,
                                          // MaterialPageRoute(builder: (context) => VideoPlayerApp()),
                                          // );
                                        },
                                        child: const Text('Rs. 2000 / Hour',
                                          style: TextStyle(
                                            color:Colors.black,
                                            fontSize:10,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child:  Container(
                                      height: 34,
                                      width: MediaQuery.of(context).size.width*1.0,
                                      //decoration: const BoxDecoration(color: Colors.black),
                                      margin: EdgeInsets.fromLTRB(0, 05, 0, 0),
                                      // padding: EdgeInsets.all(12.0),
                                      decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(8),
                                        // color:Colors.white,

                                      ),
                                      child: ElevatedButton(

                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffD08328), // background
                                          onPrimary: Colors.black, // foreground
                                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => AddPredefinedViews()),
                                          );
                                        },
                                        child: const Text('EDIT DETAILS',
                                          style: TextStyle(
                                            color:Colors.white,
                                            fontSize:10,fontFamily: 'Inter',

                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10.0,),

                Align(
                  alignment: Alignment.centerLeft,

                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 45, 05),
                    child: Text(
                      "Pre-Wedding Photoshoot", style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter'
                    ),
                    ),

                  ),
                ),


                Container(
                  height: 193,
                  child:Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    child:   Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: new AssetImage("assets/img_32.png"),
                            width: MediaQuery.of(context).size.width*0.59,
                            height: 176,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                          SizedBox(width: 8,),

                          Container(
                              width: MediaQuery.of(context).size.width*0.29,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                //  mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 0,),
                                  Container(
                                    height: 95,
                                    width: MediaQuery.of(context).size.width*1.0,
                                    padding: EdgeInsets.fromLTRB(8,6,9,7),
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Text(
                                      "Turn all your problems into possiblities", style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Inter', height: 1.1,
                                    ),
                                    ),
                                  ),



                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child:  Container(
                                      height: 32,
                                      width: MediaQuery.of(context).size.width*1.0,
                                      //decoration: const BoxDecoration(color: Colors.black),
                                      margin: EdgeInsets.fromLTRB(0, 05, 0, 0),
                                      // padding: EdgeInsets.all(12.0),
                                      decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(8),
                                        // color:Colors.white,

                                      ),
                                      child: ElevatedButton(

                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xFF8FDA30),// background
                                          onPrimary: Colors.black, // foreground
                                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          // Navigator.push(
                                          // context,
                                          // MaterialPageRoute(builder: (context) => VideoPlayerApp()),
                                          // );
                                        },
                                        child: const Text('Rs. 2000 / Hour',
                                          style: TextStyle(
                                            color:Colors.black,
                                            fontSize:10,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child:  Container(
                                      height: 34,
                                      width: MediaQuery.of(context).size.width*1.0,
                                      //decoration: const BoxDecoration(color: Colors.black),
                                      margin: EdgeInsets.fromLTRB(0, 05, 0, 0),
                                      // padding: EdgeInsets.all(12.0),
                                      decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(8),
                                        // color:Colors.white,

                                      ),
                                      child: ElevatedButton(

                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffD08328), // background
                                          onPrimary: Colors.black, // foreground
                                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => AddPredefinedViews()),
                                          );
                                        },
                                        child: const Text('EDIT DETAILS',
                                          style: TextStyle(
                                            color:Colors.white,
                                            fontSize:10,fontFamily: 'Inter',

                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10.0,),
                Align(
                  alignment: Alignment.centerLeft,

                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 45, 05),
                    child: Text(
                      "Bridal Makeover", style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter'
                    ),
                    ),

                  ),
                ),


                Container(
                  height: 193,
                  child:Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    child:   Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            image: new AssetImage("assets/img_31.png"),
                            width: MediaQuery.of(context).size.width*0.59,
                            height: 176,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                          SizedBox(width: 8,),

                          Container(
                              width: MediaQuery.of(context).size.width*0.29,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                //  mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 0,),
                                  Container(
                                    height: 95,
                                    width: MediaQuery.of(context).size.width*1.0,
                                    padding: EdgeInsets.fromLTRB(8,6,9,7),
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Text(
                                      "Turn all your problems into possiblities", style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Inter', height: 1.1,
                                    ),
                                    ),
                                  ),



                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child:  Container(
                                      height: 32,
                                      width: MediaQuery.of(context).size.width*1.0,
                                      //decoration: const BoxDecoration(color: Colors.black),
                                      margin: EdgeInsets.fromLTRB(0, 05, 0, 0),
                                      // padding: EdgeInsets.all(12.0),
                                      decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(8),
                                        // color:Colors.white,

                                      ),
                                      child: ElevatedButton(

                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xFF8FDA30),// background
                                          onPrimary: Colors.black, // foreground
                                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          // Navigator.push(
                                          // context,
                                          // MaterialPageRoute(builder: (context) => VideoPlayerApp()),
                                          // );
                                        },
                                        child: const Text('Rs. 2000 / Hour',
                                          style: TextStyle(
                                            color:Colors.black,
                                            fontSize:10,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child:  Container(
                                      height: 34,
                                      width: MediaQuery.of(context).size.width*1.0,
                                      //decoration: const BoxDecoration(color: Colors.black),
                                      margin: EdgeInsets.fromLTRB(0, 05, 0, 0),
                                      // padding: EdgeInsets.all(12.0),
                                      decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(8),
                                        // color:Colors.white,

                                      ),
                                      child: ElevatedButton(

                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffD08328), // background
                                          onPrimary: Colors.black, // foreground
                                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => AddPredefinedViews()),
                                          );
                                        },
                                        child: const Text('EDIT DETAILS',
                                          style: TextStyle(
                                            color:Colors.white,
                                            fontSize:10,fontFamily: 'Inter',

                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ),
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10.0,),



              ],
            ),
            ),

  ],
            ),





          ),
        ));
  }
}