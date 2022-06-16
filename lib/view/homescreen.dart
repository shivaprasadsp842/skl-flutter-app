import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../allappointments/appointmentPage.dart';
import '../gridcell.dart';
import '../search_master.dart';
import '../users.dart';
import '../widgets/conversationList.dart';
import '../allquestions/questionPage.dart';
import '../become_master.dart';
import 'package:http/http.dart' as http;
import '../network/services.dart';
import '../video.dart';
import '../allchats/chatPage.dart';
import '../wallet/myWallet.dart';


final Services _services = Services();

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController searchController = TextEditingController();
  List masterList = [];
  List searchList = [];

  bool viewVisible = true ;


  late Future<User> fetchSearchMaster;

  @override
  void initState() {
   fetchSearchMaster = fetchMaster();
    super.initState();
  }

  Future<User> fetchMaster() async {
    final response = await http
        .get(Uri.parse('http://inalltime.skltechnologies.com/api/fetch_search_master.php?consultant_id=IATCONSULTANT-7'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      //print()
      return User.fromJson(jsonDecode(response.body));

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      print('123');
      throw Exception('Failed to load Master');
    }
  }

  void showWidget(){
    setState(() {
      viewVisible = true ;
    });
  }

  void hideWidget(){
    setState(() {
      viewVisible = false ;
    });
  }
  @override
  build(BuildContext context) {
 //   var name =masterList.name;
    var name;
    return Scaffold(
      //theme: new ThemeData(scaffoldBackgroundColor:  Color(0xFFEFEFEF)),
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black87,
                size: 18, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular (25.0),
            topRight: Radius.circular (25.0),
          ),
        ),

        title: Container(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text ('INALLTIME',
            style: TextStyle(
              fontFamily: 'Inter',
              color: Colors.black45,
              fontWeight: FontWeight.w900,
              fontSize: 17,
            ),
          ),
        ),

        actions: [
          GestureDetector(
            onTap: () {
             Navigator.push(
                context,
               // MaterialPageRoute(builder: (context) => Master()),
                MaterialPageRoute(builder: (context) => UserView()),
              );
            },
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(1), // Border radius
                child: ClipOval(
                    child: Image(
                  image: new AssetImage("assets/img_2.png"),
                  width: 30,
                  height: 30,
                  color: null,
                  //fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                )),
              ),
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black87),
        centerTitle: true,
        backgroundColor: Colors.white70  ,
        bottomOpacity: 0.0,
        elevation: 0.0,
        //  color: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Row(
              //ROW 2
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(00, 78, 00, 00),
                    child: const Text(
                      'Find your problem solver',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 21,
                        color: Color(0xFF787878),
                        //fontWeight:FontWeight.bold,
                      ),
                    )),
              ]),
          SizedBox(
            height: 0,
          ),
          Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    child: new Image(
                  image: new AssetImage("assets/Group 707.png"),
                      width: 50,
                      height: 40,
                   // width: MediaQuery.of(context).size.width * 0.11,
                   // height: MediaQuery.of(context).size.height * 0.05,
                  color: null,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                    child: new Image(
                  image: new AssetImage("assets/Group 708.png"),
                   width: 60,
                  height: 80,
                  color: null,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    child: new Image(
                  image: new AssetImage("assets/Group 709.png"),
                   width: 50,
                  height: 40,
                  color: null,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                    child: new Image(
                      image: new AssetImage("assets/Group 712.png"),
                      width: 50,
                      height: 40,
                      color: null,
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.center,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    child: new Image(
                  image: new AssetImage("assets/Group 713.png"),
                   width: 50,
                  height: 45,
                  color: null,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                    child: new Image(
                      image: new AssetImage("assets/Group 714.png"),
                      width: 50,
                      height: 40,
                      color: null,
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.center,
                    )),
              ),
            ],
          ),
          ),

          Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height:69,
                   width: MediaQuery.of(context).size.width*0.7,
                    padding: const EdgeInsets.fromLTRB(5, 15, 0, 00),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(color: Colors.white, spreadRadius: 2),

                      ],
                      shape: BoxShape.rectangle,
                      color: Colors.white10,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.zero,
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      controller: searchController,
                      decoration: InputDecoration(
                        fillColor: Colors.white, filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                          ),

                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                          ),
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                            ),
                            borderSide: BorderSide(color: Colors.grey  )),
                        hintText: 'Paste Url / search your favorite',
                        hintStyle: TextStyle( fontFamily: 'Inter',fontSize: 12, color: Color(0xFFC4C4C4), fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height:69,
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child:    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // background
                        onPrimary: Colors.white, // foreground
                        padding: const EdgeInsets.fromLTRB(10, 10, 14, 10),
                        shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.zero,
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.zero,
                            bottomRight:Radius.circular(30.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        getMastersList(searchController.text);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => BecomeMasterStep2()),
                        // );
                      },
                      child: const Text(
                             'Search',
                        style: TextStyle( fontFamily: 'Inter',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),


                ],
              )
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
        //
        // FutureBuilder<User>(
        //   future: fetchSearchMaster,
        //   builder: (context, snapshot) {
        //     if (snapshot.hasData) {
        //       return
        //       Column(
        //         children: [
        //
        //          Text(snapshot.data!.phone_no),
        //         ],
        //       );
        //
        //     } else if (snapshot.hasError) {
        //       return Text('${snapshot.error}');
        //     }
        //
        //     // By default, show a loading spinner.
        //     return const CircularProgressIndicator();
        //   },
        // ),



        ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(15),
              children: List.generate(
                  searchList.length,
                      (index) => new SingleChildScrollView(
                    child: Card(
                      margin: const EdgeInsets.all(12),
                      shadowColor: Colors.blueGrey,
                      elevation: 4,
                      color: const Color.fromRGBO(64, 75, 96, .9),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // width: double.infinity,
                              // height: 105,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFEFEFEF),
                                boxShadow: [new BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3.0,
                                ),],
                              ),
                              padding: new EdgeInsets.fromLTRB(5.0, 5 , 5,5),
                              margin: new EdgeInsets.fromLTRB(0.0, 5, 0,5),
                              child: Card(

                                margin: new EdgeInsets.fromLTRB(5.0, 0, 5,0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                // color: Color(0xB6B3B3B3),
                                elevation:0,
                                child: InkWell(
                                  onTap: () => Navigator.push(
                                    context,

                                    MaterialPageRoute(builder: (context) => VideoPlayerApp()),
                                  ),
                                  child:Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 18,
                                      ),

                                      ClipOval(
                                          child: Image(
                                            image: new AssetImage("assets/img_2.png"),
                                            width: 70,
                                            height:70,
                                            color: null,
                                            //fit: BoxFit.scaleDown,
                                            alignment: Alignment.center,
                                          )),
                                      SizedBox(
                                        width: 18,
                                      ),

                                      Expanded(
                                        child: Container(
                                          color: Colors.transparent,
                                          padding: EdgeInsets.fromLTRB(15, 8, 0, 0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(searchList[index].name.toString(),
                                                style: TextStyle(fontFamily: 'Inter',
                                                    fontSize: 20, fontWeight: FontWeight.w900),
                                              ),
                                              SizedBox(
                                                height: 9,
                                              ),
                                              Text('Business Coach',
                                                style: TextStyle( fontFamily: 'Inter',
                                                    fontSize: 15,  fontWeight: FontWeight.w700
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text('GDF-638',
                                                style: TextStyle(color: Color(0xFF5B5A5A), fontFamily: 'Inter',
                                                  fontSize: 15,  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 6,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              ),
                            ),




                          ],
                        ),
                      ),
                    ),
                  ))
            ),




    //       Container(
    //         width: double.infinity,
    // height: 105,
    //
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(10),
    //           color: Color(0xFFEFEFEF),
    //           boxShadow: [new BoxShadow(
    //             color: Colors.grey,
    //             blurRadius: 3.0,
    //           ),],
    //         ),
    //     padding: new EdgeInsets.fromLTRB(5.0, 5 , 5,5),
    //         margin: new EdgeInsets.fromLTRB(23.0, 5, 23,4),
    // child: Card(
    //
    // margin: new EdgeInsets.fromLTRB(5.0, 0, 5,0),
    // shape: RoundedRectangleBorder(
    // borderRadius: BorderRadius.circular(10.0),
    // ),
    //  // color: Color(0xB6B3B3B3),
    // elevation:0,
    // child: InkWell(
    // onTap: () => Navigator.push(
    // context,
    //
    // MaterialPageRoute(builder: (context) => VideoPlayerApp()),
    // ),
    // child:Row(
    //         children: <Widget>[
    //           SizedBox(
    //             width: 18,
    //           ),
    //
    //           ClipOval(
    //               child: Image(
    //                 image: new AssetImage("assets/img_2.png"),
    //                 width: 70,
    //                 height:70,
    //                 color: null,
    //                 //fit: BoxFit.scaleDown,
    //                 alignment: Alignment.center,
    //               )),
    //           SizedBox(
    //             width: 18,
    //           ),
    //
    //           Expanded(
    //             child: Container(
    //               color: Colors.transparent,
    //               padding: EdgeInsets.fromLTRB(15, 8, 0, 0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: <Widget>[
    //                   SizedBox(
    //                     height: 4,
    //                   ),
    //                   Text('',
    //                     style: TextStyle(fontFamily: 'Inter',
    //                         fontSize: 20, fontWeight: FontWeight.w900),
    //                   ),
    //                   SizedBox(
    //                     height: 9,
    //                   ),
    //                   Text('Business Coach',
    //                     style: TextStyle( fontFamily: 'Inter',
    //                         fontSize: 15,  fontWeight: FontWeight.w700
    //                         ),
    //                   ),
    //                   SizedBox(
    //                     height: 7,
    //                   ),
    //                   Text('GDF-638',
    //                     style: TextStyle(color: Color(0xFF5B5A5A), fontFamily: 'Inter',
    //                              fontSize: 15,  fontWeight: FontWeight.bold,
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 6,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //       ),
    //       ),
    //       ),


        ]
        ),
      ),








      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          children: [
            SizedBox(height:50),
            
            // Card(
            //   margin: new EdgeInsets.all(10.0),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10.0),
            //   ),
            //   color: Colors.white,
            //   elevation: 10,
            //   child: ListTile(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10.0),
            //     ),
            //     iconColor: Colors.black,
            //     leading: Icon(Icons.lock_clock),
            //     title: const Text(
            //       'Requests',
            //       style: TextStyle(
            //         color: Colors.black,
            //         // fontWeight: FontWeight.bold,
            //         fontSize: 20,
            //       ),
            //     ),
            //     onTap: () {
            //       // Update the state of the app
            //       // ...
            //       // Then close the drawer
            //       Navigator.pop(context);
            //     },
            //   ),
            // ),
            Card(
              margin: new EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: ListTile(
                iconColor: Colors.black,
                leading:
                ImageIcon(
                  AssetImage("assets/lc.png"),
                  color: Colors.black,
                  size: 25,
                ),
                title: const Text(
                  'All Questions',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    fontSize: 15,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new QuestionPage()),
                  );

                },
              ),
            ),
            Card(
              margin: new EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: ListTile(
                iconColor: Colors.black,
                leading:  ImageIcon(
                  AssetImage("assets/cc.png"),
                  color: Colors.black,
                  size: 25,
                ),
                title: const Text(
                  'All Chats',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    fontSize: 15,                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new ChatPage()),
                  );

                },
              ),
            ),
            Card(
              margin: new EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: ListTile(
                iconColor: Colors.black,
                leading:  ImageIcon(
                  AssetImage("assets/direct.png"),
                  color: Colors.black,
                  size: 25,
                ),
                title: const Text(
                  'All Appointments',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    fontSize: 15,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new AppointmentPage()),
                  );

                },
              ),
            ),
            // ListTile(
            //   iconColor: Colors.black,
            //   leading: Icon(Icons.av_timer_sharp),
            //   title: const Text(
            //     'Upcoming',
            //     style: TextStyle(
            //       color: Colors.black54,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16,
            //     ),
            //   ),
            //   onTap: () {
            //     // Update the state of the app
            //     // ...
            //     // Then close the drawer
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   iconColor: Colors.black,
            //   leading: Icon(Icons.shopping_cart),
            //   title: const Text(
            //     'My Orders',
            //     style: TextStyle(
            //       color: Colors.black54,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16,
            //     ),
            //   ),
            //   onTap: () {
            //     // Update the state of the app
            //     // ...
            //     // Then close the drawer
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              iconColor: Colors.black,
              leading: Icon(Icons.account_balance_wallet),
              title: const Text(
                'My Wallet',
                style: TextStyle(
                  color: Color(0xFF6E7983),
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  fontFamily: 'Inter'
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new MyWallet()),
                );

              },
            ),
            ListTile(
              iconColor: Colors.black,
              leading: ImageIcon(
                AssetImage("assets/ep_info-filled.png"),
                color: Colors.black,
                size: 25,
              ),
              title: const Text(
                'About Us',
                style: TextStyle(
                    color: Color(0xFF6E7983),
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    fontFamily: 'Inter'
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              iconColor: Colors.black,
              leading:  ImageIcon(
                AssetImage("assets/image 67.png"),
                color: Colors.black,
                size: 25,
              ),
              title: const Text(
                'Contact Us',
                style: TextStyle(
                    color: Color(0xFF6E7983),
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    fontFamily: 'Inter'
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              iconColor: Colors.black,
              leading:  ImageIcon(
                AssetImage("assets/img_28.png"),
                color: Colors.black,
                size: 25,
              ),
              title: const Text(
                'Send Feedback',
                style: TextStyle(
                    color: Color(0xFF6E7983),
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    fontFamily: 'Inter'
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void getMastersList(String value) async {
    if(value!=null || value.length>0){

      var json = {"tag": "search", "url": "${value}"};
      var res = await _services.search_master(json);

      if (res["status"] == 1) {

        searchList = res['search'];
        masterList = res['search'];

        // print('Search Master : $masterList');
        print('Search name : $searchList');
        // print('Search result : $res');
        if(res['search']==null){
          Fluttertoast.showToast(
              msg: '${res["message"]}',
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 4,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
        }
        else{
          setState(() {
            masterList = res['search'];
          });
        }
      }
      else {
        Fluttertoast.showToast(
            msg: '${res["message"]}',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 4,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }
    }
    else{
      Fluttertoast.showToast(
          msg: 'Empty text',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }

  }
}









// Future<List<User>> getUsers() async {
//   var url = Uri.parse("http://192.168.0.19/inalltime_api/user/platform.php");
//
//   try {
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       final maps = jsonDecode(response.body).cast<Map<String, dynamic>>();
//
//       return List.generate(maps.length, (i) {
//         return User.fromMap(maps[i]);
//       });
//     } else {
//       throw Exception("Erroor");
//     }
//   } catch (e) {
//     throw new Exception(e.toString());
//   }
// }

