import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../booking/edit_book_appointment_price.dart';
import '../chat/edit_chat_consultant_price.dart';
import '../edit_question.dart';
import 'become_master_step1.dart';
import 'homescreen.dart';

class Master extends StatefulWidget {
  const Master({Key? key}) : super(key: key);

  @override
  State<Master> createState() => _MasterState();
}

class _MasterState extends State<Master> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  HomeView()),
            );
          },

          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
        ),

        title:   Center(
          child:   Container(
            //color: Colors.grey,
            height: 25,
            width:25,
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
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
        centerTitle: true,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          Container(
            //color: Colors.grey,
            height: 20,
            width:25,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.white)),
            child:FloatingActionButton(
              backgroundColor: Colors.transparent,

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
              ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BecomeMasterStep1()),
                );
              },
              // Display the correct icon depending on the state of the player.
              // child: Icon(
              //   _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              // ),
              child: Icon(Icons.edit, size: 12,
              ),
            ),
          ),
          // PopupMenuButton<int>(
          //   itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
          //     new PopupMenuItem<int>(
          //         value: 1, child: new Text('Copy Profile Link')),
          //     new PopupMenuItem<int>(
          //         value: 2, child: new Text('Share Proflie')),
          //     new PopupMenuItem<int>(
          //         value: 2, child: new Text('Report User')),
          //     new PopupMenuItem<int>(
          //         value: 2, child: new Text('Block User')),
          //     // new PopupMenuItem<int>(
          //     //     value: 3, child: new Text('Item Three')),
          //     // new PopupMenuItem<int>(
          //     //     value: 4, child: new Text('I am Item Four'))
          //   ],
          //   // onSelected: (int value) {
          //   //   setState(() { _value = value; });
          //   // }
          // )
          // GestureDetector(
          //     onTap: () {
          //       // Navigator.push(
          //       //   context,
          //       //   MaterialPageRoute(builder: (context) => const SecondRoute()),
          //       // );
          //     },
          //     child: Image(
          //     image: new AssetImage("assets/edit.png"),
          //     width: 40,
          //     height: 40,
          //     color: null,
          //     //fit: BoxFit.scaleDown,
          //     alignment: Alignment.center,
          //   )
          // ),


        ],

      ),

      body: SingleChildScrollView(
        child: IntrinsicHeight(

          child: Column(
            children: <Widget>[



              Stack(

                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    color: Colors.black,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    width: double.infinity,

                    child:   Image(
                      image: new AssetImage("assets/Rectangle 2259.png"),
                      //height: 0,
                      //   width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Container(
                  //   height: 350,
                  //   width:double.infinity,
                  //   child: FutureBuilder(
                  //     future: _initializeVideoPlayerFuture,
                  //     builder: (context, snapshot) {
                  //       if (snapshot.connectionState == ConnectionState.done) {
                  //         // If the VideoPlayerController has finished initialization, use
                  //         // the data it provides to limit the aspect ratio of the video.
                  //         return AspectRatio(
                  //           aspectRatio: _controller.value.aspectRatio,
                  //           // Use the VideoPlayer widget to display the video.
                  //           child: VideoPlayer(_controller),
                  //         );
                  //       } else {
                  //         // If the VideoPlayerController is still initializing, show a
                  //         // loading spinner.
                  //         return const Center(
                  //           child: CircularProgressIndicator(),
                  //         );
                  //       }
                  //     },
                  //   ),
                  // ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(0, 320, 0, 0),

                    child:  Card(
                      // margin: new EdgeInsets.fromLTRB(50.0, 35, 50, 24),
                      elevation: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 20, 20, 10),
                        child: Column(
                          children: [

                            SizedBox(
                              height: 80,
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
                                  ),
                                ),
                              ),
                            ),//SizedBox
                            //Text
                            SizedBox(
                              height: 20,
                            ), //SizedBox
                            Text(
                              'Arjun Chaithanya, Well known as “THE MIND ARCHITECT”  is  one  among  the finest   influencer.   He   is   renowed   Emotional Intelligence Facilitator & Performance Coach. Internationallu certified “Neuro-Linguistic Programming” practitioner from ABNLP. '
                              ,style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ), //Textstyle
                            ), //Text
                            SizedBox(
                              height: 200 ,
                            ), //SizedBox
                            //SizedBox
                          ],
                        ), //Column
                      ), //Padding
                    ),
                  ),



                  Container(
                    padding: const EdgeInsets.fromLTRB(40.0, 290, 20, 16),
                    child: Card(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),

                      elevation: 2,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(60.0, 10, 55, 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Arjun Chaithanya',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ), //Textstyle
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Entrepreneur',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ), //Textstyle
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'ARC-325',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ), //Textstyle
                            ),
                          ],
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
                              width: 70,
                              height: 70,
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
                                //iconSize: 150,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  EditLeaveQuestion()),
                                  );
                                },
                              )
                          ),
                          SizedBox(height: 3,),
                          Text('LEAVE A ',
                            style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800),),
                          Text(' QUESTION',
                            style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800),),

                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 70,
                              height: 70,
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
                                    MaterialPageRoute(builder: (context) =>  EditChatConsultantPrice()),
                                  );
                                },
                              )
                          ),
                          SizedBox(height: 3,),
                          Text('CHAT ',
                            style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800),),
                          Text(' CONSULTATION',
                            style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800),),

                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 70,
                              height: 70,
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
                                    MaterialPageRoute(builder: (context) =>  EditBookAppointmentPrice()),
                                  );
                                },
                              )
                          ),
                          SizedBox(height: 3,),
                          Text('DIRECT',
                            style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800),),
                          Text(' APPOINTMENT',
                            style: TextStyle(fontSize: 8,fontWeight: FontWeight.w800),),

                        ],
                      ),
                    ),
                  ],
                )


            ),
          ],
        ),
      ),



      // bottomSheet: Container(
      //   padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      //   color: Color(0xCCCCCCCC),
      //   height: 100.0,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: <Widget>[
      //       Padding(
      //         padding: EdgeInsets.only(left: 20.0,right: 0.0),
      //         child:     Column(
      //           children: <Widget>[
      //             Container(
      //               //color: Colors.grey,
      //               margin: EdgeInsets.all(0),
      //               padding: EdgeInsets.all(0),
      //               decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(100),
      //                   border: Border.all(width: 3, color: Colors.white)),
      //               child:  IconButton(
      //                 //update the bottom app bar view each time an item is clicked
      //                   onPressed: () {
      //                     Navigator.push(
      //                       context,
      //                       MaterialPageRoute(builder: (context) =>  EditLeaveQuestion()),
      //                     );
      //                   },
      //                   iconSize: 27.0,
      //                   icon:  ImageIcon(
      //                     AssetImage("assets/question.png"),
      //                     size: 25,
      //                     color: Colors.black,
      //                   )
      //               ),
      //             ),
      //             SizedBox(height:5),
      //             Text('LEAVE A ',
      //               style: TextStyle(fontSize: 12,),),
      //             Text('QUESTION',
      //               style: TextStyle(fontSize: 12,),),
      //
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.only(left: 10.0, right: 0.0),
      //         child: Column(
      //           children: <Widget>[
      //             Container(
      //               //color: Colors.grey,
      //               margin: EdgeInsets.all(0),
      //               padding: EdgeInsets.all(0),
      //               decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(100),
      //                   border: Border.all(width: 3, color: Colors.white)),
      //               child: IconButton(
      //                 //update the bottom app bar view each time an item is clicked
      //                   onPressed: () {
      //                     Navigator.push(
      //                       context,
      //                       MaterialPageRoute(builder: (context) =>  EditChatConsultantPrice()),
      //                     );
      //                   },
      //                   iconSize: 27.0,
      //                   icon : Icon(Icons.chat,size: 20,color:Colors.black)
      //                 // icon:  ImageIcon(
      //                 //   AssetImage("assets/chat.png"),
      //                 //   size: 25,
      //                 //   //color: Color(0xFF3A5A98),
      //                 // )
      //               ),
      //             ),
      //             SizedBox(height:5),
      //             Text('CHAT ',
      //               style: TextStyle(fontSize: 12,),),
      //             Text(' CONSULTATION',
      //               style: TextStyle(fontSize: 12,),),
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.only(right: 15.0),
      //         child:    Column(
      //           children: <Widget>[
      //             Container(
      //               //color: Colors.grey,
      //               margin: EdgeInsets.all(0),
      //               padding: EdgeInsets.all(0),
      //               decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(100),
      //                   border: Border.all(width: 3, color: Colors.white)),
      //               child:  IconButton(
      //                 //update the bottom app bar view each time an item is clicked
      //                   onPressed: () {
      //                     Navigator.push(
      //                       context,
      //                       MaterialPageRoute(builder: (context) =>  EditBookAppointmentPrice()),
      //                     );
      //                   },
      //                   iconSize: 27.0,
      //                   icon : Icon(Icons.calendar_today_outlined,size: 20,color:Colors.black)
      //                 // icon:  ImageIcon(
      //                 //     AssetImage("assets/appointment.png"),
      //                 //     size: 25,
      //                 //     color: Color(0xFF3A5A98),
      //                 //   )
      //               ),
      //             ),
      //
      //             Text('DIRECT ',
      //               style: TextStyle(fontSize: 12,),),
      //             Text(' APPOINTMENT',
      //               style: TextStyle(fontSize: 12,),),
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),






    );

  }
}