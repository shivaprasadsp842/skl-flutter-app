import 'dart:async';

import 'package:flutter/material.dart';
import 'package:furniture_ui/view/homescreen.dart';
import 'package:video_player/video_player.dart';

import 'all_questions.dart';
import 'booking/direct_book_appointment.dart';
import 'chat/chat_consultation_ratings.dart';

class VideoPlayerApp extends StatelessWidget {
  const VideoPlayerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //title: 'Video Player Demo',
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'http://inalltime.skltechnologies.com/videosample.mp4',
    );

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }
  // Bottom Navigator code

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child:
      Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 18, // Changing Drawer Icon Size
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  HomeView()),
                  );
                },
                // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),


          // leading: InkWell(
          //   onTap: () {
          //
          //   },
          //
          //   child: Icon(
          //     Icons.arrow_back_ios,
          //     color: Colors.white,
          //     size: 18,
          //   ),
          // ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,

          title:   Center(
            child:   Container(
              //color: Colors.grey,
              height: 25,
              width:25,
              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
              // padding: EdgeInsets.fromLTRB(0, 5, 5, 0)
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 2, color: Colors.white)),
              child:  FloatingActionButton(
                backgroundColor: Colors.transparent,
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.all(Radius.circular(50.0))
                //   ),

                onPressed: () {
                  // Wrap the play or pause in a call to `setState`. This ensures the
                  // correct icon is shown.
                  setState(() {
                    // If the video is playing, pause it.
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                    } else {
                      // If the video is paused, play it.
                      _controller.play();
                    }
                  });
                },
                // Display the correct icon depending on the state of the player.
                child: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  size:15,
                ),
              ),
            ),
          ),
          actions: [
            PopupMenuButton(
              elevation: 50,
              color:Colors.white,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: SizedBox(
                width: 40,
                height: 49,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    //   height: 250,
                    // color: Theme.of(context).colorScheme.button,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 10, 0),
                      child: Row(
                        children: [
                          Column(
                            children: [

                              ImageIcon(
                                AssetImage("assets/Group 686.png"),
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),

                          Spacer(),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                    value: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Row(
                        children: [
                          // Icon(
                          //     Icons.link,
                          //     color: Color(0x7D000000),
                          //     size: 20,
                          //   ),

                          ImageIcon(
                            AssetImage("assets/Vector.png"),
                            color: Color(0xFF818181),

                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text('Copy Profile Link',  style: TextStyle(height: 1.2, color: Color(0xFF6E7983), fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Inter'), ),
                          ),
                        ],
                      ),
                    )),
                PopupMenuItem(
                    value: 2,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Row(
                        children: [
                          ImageIcon(
                            AssetImage("assets/Group 724.png"),
                            color: Color(0xFF818181),
                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text('Share Proflie',  style: TextStyle(height: 1.2, color: Color(0xFF6E7983), fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Inter'), ),
                          ),
                        ],
                      ),
                    )),
                PopupMenuItem(
                    value: 3,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Row(
                        children: [
                          ImageIcon(
                            AssetImage("assets/Group 726.png"),
                            color: Color(0xFF818181),
                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text('Report User',  style: TextStyle(height: 1.2, color: Color(0xFF6E7983), fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Inter'),),
                          ),
                        ],
                      ),
                    )),
                PopupMenuItem(
                    value: 4,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.block,
                            color: Color(0xFF818181),
                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text('Block User',  style: TextStyle(height: 1.2, color: Color(0xFF6E7983), fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Inter'),),
                          ),
                        ],
                      ),
                    ))
              ],
            ),

          ],

          // iconTheme: IconThemeData(
          //   color: Colors.white, //change your color here
          // ),

          //   style: TextStyle(color:Colors.black,),),
        ),
        // Use a FutureBuilder to display a loading spinner while waiting for the
        // VideoPlayerController to finish initializing.
        body:SingleChildScrollView(
          child: IntrinsicHeight(
            child: Column(

              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      color: Colors.transparent,
                      height: MediaQuery.of(context).size.height *0.5,
                      //height: MediaQuery.of(context).size.height *0.5,

                      width:double.infinity,
                      // padding: const EdgeInsets.fromLTRB(left, top, right, bottom),
                      child: FutureBuilder(
                        future: _initializeVideoPlayerFuture,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.done) {
                            // If the VideoPlayerController has finished initialization, use
                            // the data it provides to limit the aspect ratio of the video.
                            return AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              // Use the VideoPlayer widget to display the video.
                              child: VideoPlayer(_controller),
                            );
                          } else {
                            // If the VideoPlayerController is still initializing, show a
                            // loading spinner.
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      //  height: 412,
                      //  height: MediaQuery.of(context).size.height * 0.5,
                     // padding: const EdgeInsets.fromLTRB(00, 320, 0, 0),
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
                      child:
                      Container(
                        width: MediaQuery.of(context).size.width*0.78,

                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12, width: 1),
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.white,
                          //shape: BoxShape.circle,
                        ),
                      // Card(
                      //   // margin: new EdgeInsets.fromLTRB(50.0, 35, 50, 24),
                      //   elevation: 20,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(40.0),
                      //   ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25.0, 20, 20, 10),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 60,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    "About",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                ),
                              ),//SizedBox
                              //Text
                              SizedBox(
                                height: 15,
                              ), //SizedBox
                              Text(
                                'I am Rajiv Talreja and I am a business coach.My entrepreneurial journey started when I founded Quantum leap in the year 2006 as a Corporate Training Company. From 2006 to 2014, we built a clientele of 110 corporate organization.'
                                ,style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w300,
                                height: 1.2,
                                letterSpacing : 0.895,
                                color: Colors.black,
                              ), //Textstyle
                              ), //Text
                              SizedBox(
                                height: MediaQuery.of(context).size.height*0.4,
                              ), //SizedBox
                              //SizedBox
                            ],
                          ), //Column
                        ), //Padding
                      ),
                    ),



                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4, left:45),
                      //padding: const EdgeInsets.fromLTRB(45.0, 280, 30, 16),
                      child:Container(
                          width: MediaQuery.of(context).size.width*0.78,

                          decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(35),
                        color: Colors.black,
            //shape: BoxShape.circle,
                    ),
                      // Card(
                      //
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(35.0),
                      //   ),

                      //  elevation: 2,
                        padding: const EdgeInsets.fromLTRB(0.0, 10, 0, 10),
                        child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Rajiv Talreja',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ), //Textstyle
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Business Coach',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ), //Textstyle
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'GDF-638',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w300,
                                ), //Textstyle
                              ),
                            ],
                          ),


                      ),
                    ),




                  ],
                )


              ],
            ),

          ),
        ),


        bottomSheet: Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          color: Color(0xffffffff),
          height: 120.0,
          child:Stack(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 32, 0, 0),
                child: Container(
                  //  color: Colors.red,
                  height: 80,
                  child:Card(
                      color: Color(0xcccccccc),
                      elevation: 10,
                      child: ListTile(

                      )) ,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 24, 10),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                width: 65,
                                height: 65,
                                padding: const EdgeInsets.fromLTRB(5.0, 5, 5, 5),
                                decoration: BoxDecoration(
                                    border: Border.all(  width: 8,color: Colors.white),
                                    // borderRadius: BorderRadius.all(
                                    //     Radius.circular(18.0) //                 <--- border radius here
                                    // ),
                                    color: Color(0xCCCCCCCC),
                                    shape: BoxShape.circle
                                ),

                                child:IconButton(
                                  icon: Image.asset('assets/lc.png'),
                                  //iconSize: 20,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  AllLeaveQuestion()),
                                    );
                                  },
                                )
                            ),
                            SizedBox(height: 5,),
                            Text('LEAVE A ',
                              style: TextStyle(color:Color(0xFF243443),fontSize: 5,fontWeight: FontWeight.w800, height: 1, fontFamily: 'Inter'),),
                            Text(' QUESTION',
                              style: TextStyle(color:Color(0xFF243443),fontSize: 5,fontWeight: FontWeight.w800, height: 01,  fontFamily: 'Inter'),),

                          ],
                        ),
                      ),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                width: 65,
                                height: 65,
                                padding: const EdgeInsets.fromLTRB(5.0, 5, 5, 5),
                                decoration: BoxDecoration(
                                    border: Border.all(  width: 8,color: Colors.white),
                                    // borderRadius: BorderRadius.all(
                                    //     Radius.circular(18.0) //                 <--- border radius here
                                    // ),
                                    color: Color(0xCCCCCCCC),
                                    shape: BoxShape.circle
                                ),

                                child:IconButton(
                                  icon: Image.asset('assets/cc.png'),
                                  //iconSize: 150,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  ChatConsultationRating()),
                                    );
                                  },
                                )
                            ),
                            SizedBox(height: 3,),
                            Text('CHAT ',
                              style: TextStyle(color:Color(0xFF243443),fontSize: 5,fontWeight: FontWeight.w800, height: 1, fontFamily: 'Inter'),),
                            Text(' CONSULTATION',
                              style: TextStyle(color:Color(0xFF243443),fontSize: 5,fontWeight: FontWeight.w800, height: 1, fontFamily: 'Inter'),),

                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                width: 65,
                                height: 65,
                                padding: const EdgeInsets.fromLTRB(5.0, 5, 5, 5),
                                decoration: BoxDecoration(
                                    border: Border.all(  width: 8,color: Colors.white),
                                    // borderRadius: BorderRadius.all(
                                    //     Radius.circular(18.0) //                 <--- border radius here
                                    // ),
                                    color: Color(0xCCCCCCCC),
                                    shape: BoxShape.circle
                                ),

                                child:IconButton(
                                  icon: Image.asset('assets/direct.png'),
                                  //iconSize: 150,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  DirectBookAppointment()),
                                    );
                                  },
                                )
                            ),
                            SizedBox(height: 3,),
                            Text('DIRECT',
                              style: TextStyle(color:Color(0xFF243443),fontSize: 5,fontWeight: FontWeight.w800, height: 1, fontFamily: 'Inter'),),
                            Text(' APPOINTMENT',
                              style: TextStyle(color:Color(0xFF243443), fontSize: 5,fontWeight: FontWeight.w800, height: 1, fontFamily: 'Inter'),),

                          ],
                        ),
                      ),
                    ],
                  )


              ),
            ],
          ),
        ),






      ),
    );
  }
}