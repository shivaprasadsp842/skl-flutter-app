import 'package:flutter/material.dart';
import 'package:furniture_ui/user_view.dart';
import 'package:furniture_ui/video.dart';

import 'all_questions.dart';
import 'become_master.dart';


void main() => runApp(const SearchUser());

class SearchUser extends StatelessWidget {
  const SearchUser({Key? key}) : super(key: key);

  static const appTitle = 'INALLTIME';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // theme: new ThemeData(scaffoldBackgroundColor:  Color(0xFFEFEFEF)),
      title: appTitle,
      theme: Theme.of(context).copyWith(
        backgroundColor: Colors.white,
      ),
      home: MyHomePage(title: appTitle),

    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //theme: new ThemeData(scaffoldBackgroundColor:  Color(0xFFEFEFEF)),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),

        title: Text(title,
          style: TextStyle(color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
        CircleAvatar(
        radius: 40,
        backgroundColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(5), // Border radius
          child: ClipOval(child:   Image(
            image: new AssetImage("assets/fb1.PNG"),
            width: 40,
            height: 40,
            color: null,
            //fit: BoxFit.scaleDown,
            alignment: Alignment.center,
          )
          ),
        ),
        ),

        ],
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        //  color: Colors.black,
      ),
      body: Column(children: <Widget>[
        Row(//ROW 2
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                  alignment: Alignment.center,

                  padding: const EdgeInsets.fromLTRB(00, 50, 00, 10),
                  child: const Text(
                    'Find your problem solver',
                    style: TextStyle(fontSize: 25,
                      color: Colors.black,
                      //fontWeight:FontWeight.bold,
                    ),
                  )
              ),

            ]),
        Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Container(
                  child: new Image(
                    image: new AssetImage("assets/youtube.PNG"),
                    width: 40,
                    height: 40,
                    color: null,
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.center,
                  )),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child:   Container(
            //       child: new Image(
            //         image: new AssetImage("assets/reddit.PNG"),
            //         width: 40,
            //         height: 40,
            //         color: null,
            //         fit: BoxFit.scaleDown,
            //         alignment: Alignment.center,
            //       )),
            // ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Container(
                  child: new Image(
                    image: new AssetImage("assets/fb1.PNG"),
                    width: 40,
                    height: 40,
                    color: null,
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.center,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Container(
                  child: new Image(
                    image: new AssetImage("assets/instagram.PNG"),
                    width: 40,
                    height: 40,
                    color: null,
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.center,
                  )),
            ),
          ],
        ),
        Container(

          padding: const EdgeInsets.fromLTRB(50, 20, 50, 00),
          child: TextField(

            decoration:  InputDecoration(

              //  prefixIcon: Icon(Icons.paste,  color: Colors.black,),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,

                  ),
                  onPressed: () {

                  },
                ),
              fillColor: Colors.white, filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  borderSide: BorderSide(color: Colors.transparent)),
              hintText: 'Paste Url / search your favorite',

            ),

          ),
        ),

      Container(
          width: 400,
          height: 100,
       child : GestureDetector (



          child: Card(

            margin: new EdgeInsets.all(10.0),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.white,
            elevation: 10,


            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                //    Image(
                //   image: new AssetImage("assets/fb1.PNG"),
                //   width: 40,
                //   height: 40,
                //   color: null,
                //   fit: BoxFit.scaleDown,
                //   alignment: Alignment.center,
                // ),
                const ListTile(

                  leading: Icon(Icons.album, size: 60),
                  title: Text(
                      'Rajiv Talreja',
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,)
                  ),
                  subtitle: Text(
                      'Business Coach',
                      style: TextStyle(fontSize: 15.0,
                          color:Colors.black)
                  ),

                ),


              ],
            ),

          ),
         onTap: () => Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => VideoPlayerApp()),
       ),
          ),
          ),



        Container(
          // width: 400,
          // height: 100,
          child: Card(
            margin: new EdgeInsets.all(10.0),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.white,
            elevation: 10,





          ),
        ),
      ]
      ),




      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            //   child: Text('INALLTIME'),
            // ),
    // width: 400,
    // height: 100,
    // child: Card(
    // margin: new EdgeInsets.all(10.0),
    //
    // shape: RoundedRectangleBorder(
    // borderRadius: BorderRadius.circular(10.0),
    // ),
    // color: Colors.white,
    // elevation: 10,
          Card(
            margin: new EdgeInsets.all(10.0),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.white,
            elevation: 10,
            child:ListTile(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              ),
              iconColor: Colors.black,
              leading: Icon(Icons.lock_clock),
              title: const Text('Requests',
                style: TextStyle(color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
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
        child:
            ListTile(
              iconColor: Colors.black,
              leading: Icon(Icons.contact_support_rounded),
              title: const Text('All Questions',
                style: TextStyle(color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AllLeaveQuestion()),
                // );
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
              child:
              ListTile(
                iconColor: Colors.black,
                leading: Icon(Icons.chat),
                title: const Text('All Chats',
                  style: TextStyle(color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
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
              child:
              ListTile(
                iconColor: Colors.black,
                leading: Icon(Icons.view_comfortable),
                title: const Text('All Appointments',
                  style: TextStyle(color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),

                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),

            ListTile(
              iconColor: Colors.black,
              leading: Icon(Icons.av_timer_sharp),
              title: const Text('Upcoming',
                style: TextStyle(color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
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
              leading: Icon(Icons.shopping_cart),
              title: const Text('My Orders',
                style: TextStyle(color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
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
              leading: Icon(Icons.account_balance_wallet),
              title: const Text('My Wallet',
                style: TextStyle(color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
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
              leading: Icon(Icons.person_search),
              title: const Text('About Us',
                style: TextStyle(color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
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
              leading: Icon(Icons.contact_phone),
              title: const Text('Contact Us',
                style: TextStyle(color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
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
              leading: Icon(Icons.feedback),
              title: const Text('Send Feedback',
                style: TextStyle(color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
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
}