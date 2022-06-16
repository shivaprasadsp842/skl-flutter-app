import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';

import 'booking_appointment_views.dart';
import 'check_availability.dart';
//import 'direct_book_appointment.dart';
//
// void main() => runApp(AllBookingAppointment());




class AllBookingAppointment extends StatelessWidget {
  AllBookingAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home:Scaffold(
        backgroundColor:  Color(0xFFEBBF8B),
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(25.0), // here the desired height
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
                    MaterialPageRoute(builder: (context) =>  CheckAvailability()),
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
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: BookingCheckStateful(),
          ),
        ),

      ),
    );
  }
}
class BookingCheckStateful extends StatefulWidget {
  const BookingCheckStateful({Key? key}) : super(key: key);

  @override
  State<BookingCheckStateful> createState() => _BookingCheckStatefulState();
}

class _BookingCheckStatefulState extends State<BookingCheckStateful> {

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: IntrinsicHeight(
          child:  Container(
            color: Color(0xFFE7CC86),
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

          Container(
           // color: Color(0xB2E7CC86),
              color: Color.fromRGBO(231, 204, 134, 0.7),
             padding: const EdgeInsets.fromLTRB(9, 0, 5, 05),
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
                            width: MediaQuery.of(context).size.width*0.57,
                            height: 176,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                          SizedBox(width: 8,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          //  mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 5,),
                                  Container(
                                    height: 90,
                                     constraints: BoxConstraints(minWidth:  MediaQuery.of(context).size.width*0.2, maxWidth: MediaQuery.of(context).size.width*0.3),
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
                                  width: MediaQuery.of(context).size.width*0.30,
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
                                      padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
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
                                  width: MediaQuery.of(context).size.width*0.30,
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
                                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      // Navigator.push(
                                      // context,
                                      // MaterialPageRoute(builder: (context) => BookingAppointmentView()),
                                      // );
                                    },
                                    child: const Text('View Details',
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
                          ],
                    ),
              ),
              ),
              ),

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
                            width: MediaQuery.of(context).size.width*0.57,
                            height: 176,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                          SizedBox(width: 8,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          //  mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 5,),
                                  Container(
                                    height: 90,
                                     constraints: BoxConstraints(minWidth:  MediaQuery.of(context).size.width*0.2, maxWidth: MediaQuery.of(context).size.width*0.3),
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
                                  width: MediaQuery.of(context).size.width*0.30,
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
                                      padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
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
                                  width: MediaQuery.of(context).size.width*0.30,
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
                                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      // Navigator.push(
                                      // context,
                                      // MaterialPageRoute(builder: (context) => BookingAppointmentView()),
                                      // );
                                    },
                                    child: const Text('View Details',
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
                          ],
                    ),
              ),
              ),
              ),

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
                            width: MediaQuery.of(context).size.width*0.57,
                            height: 176,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                          SizedBox(width: 8,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          //  mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 5,),
                                  Container(
                                    height: 90,
                                     constraints: BoxConstraints(minWidth:  MediaQuery.of(context).size.width*0.2, maxWidth: MediaQuery.of(context).size.width*0.3),
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
                                  width: MediaQuery.of(context).size.width*0.30,
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
                                      padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
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
                                  width: MediaQuery.of(context).size.width*0.30,
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
                                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => BookingAppointmentView()),
                                      );
                                    },
                                    child: const Text('BOOK NOW',
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
                          ],
                    ),
              ),
              ),
              ),

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
                            width: MediaQuery.of(context).size.width*0.57,
                            height: 176,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                          SizedBox(width: 8,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          //  mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 5,),
                                  Container(
                                    height: 90,
                                     constraints: BoxConstraints(minWidth:  MediaQuery.of(context).size.width*0.2, maxWidth: MediaQuery.of(context).size.width*0.3),
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
                                  width: MediaQuery.of(context).size.width*0.30,
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
                                      padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => BookingAppointmentView()),
                                      // );
                                    },
                                    child: const Text('Rs. 4000 / Hour',
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
                                  width: MediaQuery.of(context).size.width*0.30,
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
                                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => BookingAppointmentView()),
                                      );
                                    },
                                    child: const Text('BOOK NOW',
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
                          ],
                    ),
              ),
              ),
              ),

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
                            width: MediaQuery.of(context).size.width*0.57,
                            height: 176,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                          SizedBox(width: 8,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          //  mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 5,),
                                  Container(
                                    height: 90,
                                     constraints: BoxConstraints(minWidth:  MediaQuery.of(context).size.width*0.2, maxWidth: MediaQuery.of(context).size.width*0.3),
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
                                  width: MediaQuery.of(context).size.width*0.30,
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
                                      padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => BookingAppointmentView()),
                                      // );
                                    },
                                    child: const Text('Rs. 250 / Hour',
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
                                  width: MediaQuery.of(context).size.width*0.30,
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
                                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => BookingAppointmentView()),
                                      );
                                    },
                                    child: const Text('BOOK NOW',
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