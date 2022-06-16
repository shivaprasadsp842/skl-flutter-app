import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chatUsersModel.dart';
import 'conversationList.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL: "assets/userImage1.jpg",
        time: "Now"),
    ChatUsers(
        name: "Glady's Murphy",
        messageText: "That's Great",
        imageURL: "assets/userImage2.jpg",
        time: "Yesterday"),
    ChatUsers(
        name: "Jorge Henry",
        messageText: "Hey where are you?",
        imageURL: "assets/userImage3.jpg",
        time: "31 Mar"),
    ChatUsers(
        name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        imageURL: "assets/userImage4.jpg",
        time: "28 Mar"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL: "assets/userImage5.jpg",
        time: "23 Mar"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL: "assets/userImage6.jpg",
        time: "17 Mar"),
    ChatUsers(
        name: "Andrey Jones",
        messageText: "Can you please share the file?",
        imageURL: "assets/userImage7.jpg",
        time: "24 Feb"),
    ChatUsers(
        name: "John Wick",
        messageText: "How are you?",
        imageURL: "assets/userImage8.jpg",
        time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Chats', style:TextStyle(color: Colors.black,)),
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


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:furniture_ui/widgets/conversationList.dart';
//
// import '../model/chatUsersModel.dart';
// import 'model/chatUsersModel.dart';
//
//
// class ChatPage extends StatefulWidgetWidget {
//   ChatPage({Key? key}) : super(key: key);
//
//   List<ChatUsers> chatUsers = [
//     ChatUsers(
//         name: "Jane Russel",
//         messageText: "Awesome Setup",
//         imageURL: "assets/userImage1.jpg",
//         time: "Now"),
//     ChatUsers(
//         name: "Glady's Murphy",
//         messageText: "That's Great",
//         imageURL: "assets/userImage2.jpg",
//         time: "Yesterday"),
//     ChatUsers(
//         name: "Jorge Henry",
//         messageText: "Hey where are you?",
//         imageURL: "assets/userImage3.jpg",
//         time: "31 Mar"),
//     ChatUsers(
//         name: "Philip Fox",
//         messageText: "Busy! Call me in 20 mins",
//         imageURL: "assets/userImage4.jpg",
//         time: "28 Mar"),
//     ChatUsers(
//         name: "Debra Hawkins",
//         messageText: "Thankyou, It's awesome",
//         imageURL: "assets/userImage5.jpg",
//         time: "23 Mar"),
//     ChatUsers(
//         name: "Jacob Pena",
//         messageText: "will update you in evening",
//         imageURL: "assets/userImage6.jpg",
//         time: "17 Mar"),
//     ChatUsers(
//         name: "Andrey Jones",
//         messageText: "Can you please share the file?",
//         imageURL: "assets/userImage7.jpg",
//         time: "24 Feb"),
//     ChatUsers(
//         name: "John Wick",
//         messageText: "How are you?",
//         imageURL: "assets/userImage8.jpg",
//         time: "18 Feb"),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('All Questions'),
//         actions: const <Widget>[
//           Center(
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Icon(Icons.search),
//               )),
//         ],
//       ),
//       body:SingleChildScrollView(
//         child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//
//               ListView.builder(
//                 itemCount: chatUsers.length,
//                 shrinkWrap: true,
//                 padding: EdgeInsets.only(top: 0),
//                 physics: NeverScrollableScrollPhysics(),
//                 itemBuilder: (context, index){
//                   return ConversationList(
//                     name: chatUsers[index].name,
//                     messageText: chatUsers[index].messageText,
//                     imageUrl: chatUsers[index].imageURL,
//                     time: chatUsers[index].time,
//                     isMessageRead: (index == 0 || index == 3)?true:false,
//                   );
//                 },
//               ),
//             ]
//         ),
//       ),
//     );
//   }
// }
