import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appointmentUserModel.dart';
import 'conversationList.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  List<AppointUsers> chatUsers = [
    AppointUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/userImage1.jpg",
        time: "Now"),
    AppointUsers(
        name: "Glady's Murphy",
        messageText: "That's Great",
        imageURL: "assets/userImage2.jpg",
        time: "Yesterday"),
    AppointUsers(
        name: "Jorge Henry",
        messageText: "Hey where are you?",
        imageURL: "assets/userImage3.jpg",
        time: "31 Mar"),
    AppointUsers(
        name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        imageURL: "assets/userImage4.jpg",
        time: "28 Mar"),
    AppointUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL: "assets/userImage5.jpg",
        time: "23 Mar"),
    AppointUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL: "assets/userImage6.jpg",
        time: "17 Mar"),
    AppointUsers(
        name: "Andrey Jones",
        messageText: "Can you please share the file?",
        imageURL: "assets/userImage7.jpg",
        time: "24 Feb"),
    AppointUsers(
        name: "John Wick",
        messageText: "How are you?",
        imageURL: "assets/userImage8.jpg",
        time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointments', style:TextStyle(color: Colors.black,)),
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SearchPage())),
              icon: Icon(Icons.search))
        ],
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body:SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              ListView.builder(
                padding: EdgeInsets.all(0.0),

                itemCount: chatUsers.length,
                shrinkWrap: true,
                //padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return ConversationList(
                    name: chatUsers[index].name,
                    messageText: chatUsers[index].messageText,
                    imageUrl: chatUsers[index].imageURL,
                    time: chatUsers[index].time,
                    isMessageRead: (index == 0 || index == 3)?true:false,
                  );
                },
              ),
            ]
        ),
      ),
    );
  }
}


// Search Page
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The search area here
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(

                  hintText: 'Search...',
                  border: InputBorder.none ),
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),


    );
  }
}

