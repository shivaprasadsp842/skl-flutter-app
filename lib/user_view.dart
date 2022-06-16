import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(

    home: UserView(),
  ));
}


class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);


  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [

         // icon: const Icon(Icons.navigate_next),
        ],

        // iconTheme: IconThemeData(
        //   color: Colors.white, //change your color here
        // ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text('Inalltime',
        style: TextStyle(color:Colors.black,),),
      ),

      body: Stack(
        children: <Widget>[

          Card(
              elevation: 0,
              child: new Image(
                image: new AssetImage("assets/rajiv.PNG"),
                width: 1000,
                 height: 250,
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              )
          ),
          Padding(
                     padding: const EdgeInsets.fromLTRB(0.0, 250, 0, 0),

            child: Card(

             // margin: new EdgeInsets.fromLTRB(50.0, 35, 50, 24),
                elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
               //CircleAvatar
                    Text(
                      'GDF-638',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ), //Textstyle
                    ),
                SizedBox(
                  height: 10,
                ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "About",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),//SizedBox
               //Text
                SizedBox(
                  height: 10,
                ), //SizedBox
                Text(
                  'I am Rajiv Talreja, and I am a business coach. My  journey started when I founded Quantum Leap in the year 2006 as a Corporate TrainingCompany. From 2006 to 2014, we built aclientele of 110 corporate organizations. '
                  ,style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ), //Textstyle
              ), //Text
              SizedBox(
                height: 10,
              ), //SizedBox
               //SizedBox
              ],
            ), //Column
          ), //Padding
               ),
          ),

          Padding(

            padding: const EdgeInsets.fromLTRB(50.0, 220, 50, 24),
            child: Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),

                elevation: 2,
                color: Colors.black,
                child: ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Rajiv Talreja',
                    style: TextStyle(color: Colors.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 20,

                    ),
                  ),
                  subtitle: Text('Business Coach',
                    style: TextStyle(color: Colors.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),
                )
            ),
          ),
        ],
      ),



    endDrawer: Drawer(
    child: ListView(
    children: <Widget>[
    ListTile(
    leading: Icon(Icons.link),
    title: Text('Copy Profile Link'),
    onTap: (){
    Navigator.pushNamed(context, '/home');
    },
    ),
    ListTile(
    leading: Icon(Icons.person_search_rounded),
    title: Text('Share Proflie'),
    onTap: (){
    Navigator.pushNamed(context, '/transactionsList');
    },
    ),
      ListTile(
        leading: Icon(Icons.report),
        title: Text('Report User'),
        onTap: (){
          Navigator.pushNamed(context, '/transactionsList');
        },
      ),
      ListTile(
        leading: Icon(Icons.block),
        title: Text('Block User'),
        onTap: (){

        },
      ),
    ]
    )
    ),
    bottomNavigationBar: BottomNavigationBar(
      //fixedColor: Colors.blueAccent,
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage("assets/question.png"),
        size: 40,
        color: Color(0xFF3A5A98),
      ),
    label: 'LEAVE A QUESTION',
      backgroundColor: Colors.red,

    ),
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage("assets/chat.png"),
        size: 40,

        color: Color(0xFF3A5A98),
      ),
    label: 'CHAT CONSULTATION',
    ),
    BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage("assets/appointment.png"),
        size: 40,

        color: Color(0xFF3A5A98),
      ),
    label: 'DIRECT APPOINTMENT',
    ),
    ],
      fixedColor: Colors.black,
      // currentIndex: _selectedIndex,
      //selectedItemColor: Colors.amber[800],
      // onTap: _onItemTapped,
    ),
    );

  }
}