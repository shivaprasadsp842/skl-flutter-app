import 'package:flutter/material.dart';
import 'package:furniture_ui/allchats/chatPage.dart';

import '../chatmodel/chatMessageModel.dart';

class ContinueChat extends StatefulWidget{
  @override
  _ContinueChatState createState() => _ContinueChatState();
}

class _ContinueChatState extends State<ContinueChat> {
  String? dropdownValue = 'TIME PERIODS';
  List<String> dropdownItems = <String>[
    'TIME PERIODS',
    'ANY TIME',
    'MORNING',
    'NOON',
    "EVENING",
    "NIGHT"
  ];
// time hours
  String? dropdownValuehours = 'TIME HOURS';
  List<String> dropdownItemshours = <String>[
    'TIME HOURS',
    'ANY TIME',
    '05:00AM - 06:00AM',
    '07:00AM - 08:00AM',
    "08:00AM - 09:00AM",
    "09:00AM - 10:00AM"
  ];

  void choiceAction(int choice) {

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => Rating()),
    // );

  }
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hi sir, My name Rajiv Talreja, I want to ask some questions regarding my education, Can i take 30 minutes of your time. Please...", messageType: "receiver"),
    // ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    // ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    // ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    // ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
  bool viewVisible = false ;
  bool hideVisible = true ;

  void showWidget(){
    setState(() {
      viewVisible = true ;
      hideVisible = true  ;
    });
  }

  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }
  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          Card(
            color: Color(0xF5F5F5),

            child: Padding(
              padding: const EdgeInsets.fromLTRB(05.0, 15, 5, 10),
              child:  Text('00 : 00 : 00', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),

          PopupMenuButton<int>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
              new PopupMenuItem<int>(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.paste, color: Colors.grey.shade600,),
                    SizedBox(width:10),
                    Text('Complete Question', style: TextStyle(color: Colors.grey.shade600, fontSize: 15),),
                  ],
                ),
                value: 1, ),
              new PopupMenuItem<int>(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.block_flipped, color: Colors.grey.shade600,),
                    SizedBox(width:10),
                    Text('Block', style: TextStyle(color: Colors.grey.shade600, fontSize: 15),),
                  ],
                ),
                value: 1, ),
              new PopupMenuItem<int>(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.person_add_sharp, color: Colors.grey.shade600,),
                    SizedBox(width:10),
                    Text('Report', style: TextStyle(color: Colors.grey.shade600, fontSize: 15),),
                  ],
                ),
                value: 1, ),
              // new PopupMenuItem<int>(
              //     value: 2, child: new Text('Block')),
              // new PopupMenuItem<int>(
              //     value: 3, child: new Text('Report')
              // )

            ],
            onSelected: choiceAction,
          )

        ],
        iconTheme: IconThemeData(color: Colors.black),
        //centerTitle: true,
        //   backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back,color: Colors.black,),
                ),
                SizedBox(width: 2,),
                CircleAvatar(
                  backgroundImage: NetworkImage("<https://randomuser.me/api/portraits/men/5.jpg>"),
                  maxRadius: 20,
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Kriss Benwat",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                      SizedBox(height: 6,),
                      Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
                    ],
                  ),
                ),
                // Icon(Icons.settings,color: Colors.black54,),

              ],
            ),
          ),
        ),
      ),
      body:  Align(
    alignment: Alignment.bottomLeft,
    child: SingleChildScrollView(
    child: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
     child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
              child: Text(
                "Preffered Date", style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          // Container(
          // width: 200.0,
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child:  Container(
                height: 32.0,
                // color: Colors.white,
                //padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //shape: BoxShape.circle,
                ),
                child:TextField(
                  // readOnly: true,
                  controller: dateController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.calendar_today, size: 20,),
                      hintText: 'CHOOSE YOUR PREFERRED DATE'
                  ),
                  onTap: () async {
                    var date =  await showDatePicker(
                        context: context,
                        initialDate:DateTime.now(),
                        firstDate:DateTime(1900),
                        lastDate: DateTime(2100));
                    dateController.text = date.toString().substring(0,10);
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.fromLTRB(00, 10, 00, 05),
              child: Text(
                "Select Preferred Time", style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //SizedBox(width: 10.0,),
                new Flexible(
                  child:Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 00, 0),
                      child:  Container(
                        height: 32.0,
                        // width:200,
                        //padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          //shape: BoxShape.circle,
                        ),
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: Icon(Icons.arrow_drop_down),

                          isExpanded: true,
                          iconSize: 26,
                          elevation: 10,
                          style: const TextStyle(color: Colors.black),
                          underline: Container(
                            height: 2,
                            color: Colors.transparent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                new Flexible(
                  child:Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child:  Container(
                        height: 32.0,
                        // width:200,
                        //padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          //shape: BoxShape.circle,
                        ),
                        child: DropdownButton<String>(
                          value: dropdownValuehours,
                          icon: Icon(Icons.arrow_drop_down),

                          isExpanded: true,
                          iconSize: 26,
                          elevation: 10,
                          style: const TextStyle(color: Colors.black),
                          underline: Container(
                            height: 2,
                            color: Colors.transparent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValuehours = newValue;
                            });
                          },
                          items: dropdownItemshours.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),

              ]
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(

              padding: const EdgeInsets.fromLTRB(0, 10, 00, 10),
              child: Text(
                "Requirement", style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                //fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(

              padding: const EdgeInsets.fromLTRB(00, 0, 00, 10),
              child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration.collapsed(hintText: "Describe your requirement"),
                    ),
                  )
              ),
            ),
          ),


          Visibility (
            visible: _isVisible,
            child:
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(

                      padding: const EdgeInsets.fromLTRB(0, 10, 00, 10),
                      child: Text(
                        "Add a comment", style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(

                      padding: const EdgeInsets.fromLTRB(00, 0, 00, 10),
                      child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: TextField(
                              maxLines: 4,
                              decoration: InputDecoration.collapsed(hintText: "Comment Here...."),
                            ),
                          )
                      ),
                    ),
                  ),
                ],
              ),

          ),



          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: hideVisible,
            child:Align(
              alignment: Alignment.bottomLeft,
              child:Container(
                margin: EdgeInsets.only(left: 20, top:10, right: 20, bottom:25),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  SizedBox(
                  width: 300.0,
                  height: 60.0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // background
                        onPrimary: Colors.white, // foreground
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                        side: BorderSide(width: 1, color: Colors.black,),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: showToast,
                      child: const Text('Add A Comment',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:13,
                        ),
                      ),

                    ),
                    ),
                  ],
                ),
              ),
            ),
          ),


          Align(
            alignment: Alignment.centerLeft,
            child: Container(

              padding: const EdgeInsets.fromLTRB(00, 0, 00, 10),
              child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      maxLines: 2,
                      decoration: InputDecoration.collapsed(hintText: "Remarks"),
                    ),
                  )
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 300.0,
                height: 60.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // background
                    onPrimary: Colors.white, // foreground
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                    side: BorderSide(width: 1, color: Colors.black,),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: (){},
                  child: const Text('Suggest ',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize:13,
                    ),
                  ),

                ),
              ),
            ],
          ),


        Align(
              alignment: Alignment.bottomLeft,
              child:Container(
                margin: EdgeInsets.only(left: 20, top:50, right: 20, bottom:25),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background
                        onPrimary: Colors.white, // foreground
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                        side: BorderSide(width: 1, color: Colors.black,),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text('Reject',
                        style: TextStyle(
                          color:Colors.black,
                          fontSize:13,
                        ),),
                      onPressed: () => Navigator.pop(context),
                    ),
                    SizedBox(height:10,width:10,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // background
                        onPrimary: Colors.white, // foreground
                        padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new ChatPage()),
                        );

                      },
                      child: const Text('Accept Chat Booking',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:13,
                        ),
                      ),

                    ),
                  ],
                ),
              ),
            ),
          SizedBox(height:100,width:10,),
          // Visibility(
          //   maintainSize: true,
          //   maintainAnimation: true,
          //   maintainState: true,
          //   visible: viewVisible,
          //   child:  Align(
          //     alignment: Alignment.bottomLeft,
          //     child: Container(
          //       padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
          //       height: 60,
          //       width: double.infinity,
          //       color: Colors.white,
          //       child: Row(
          //         children: <Widget>[
          //           GestureDetector(
          //             onTap: (){
          //             },
          //             child: Container(
          //               height: 30,
          //               width: 30,
          //               //color: Colors.white,
          //               decoration: BoxDecoration(
          //                 color: Colors.white,
          //                 borderRadius: BorderRadius.circular(30),
          //               ),
          //               child: Icon(Icons.emoji_emotions_outlined, color: Colors.grey, size: 20, ),
          //             ),
          //           ),
          //           SizedBox(width: 15,),
          //           Expanded(
          //             child: TextField(
          //               decoration: InputDecoration(
          //                   hintText: "Type a message",
          //                   hintStyle: TextStyle(color: Color(0xffA5A4A4)),
          //                   border: InputBorder.none
          //               ),
          //             ),
          //           ),
          //           SizedBox(width: 15,),
          //           FloatingActionButton(
          //             onPressed: (){},
          //             child: Icon(Icons.attach_file_sharp,color: Colors.grey,size: 18,),
          //             backgroundColor: Colors.white,
          //             elevation: 0,
          //           ),
          //           FloatingActionButton(
          //             onPressed: (){},
          //             child: Icon(Icons.camera_alt_sharp,color: Colors.grey,size: 18,),
          //             backgroundColor: Colors.white,
          //             elevation: 0,
          //           ),
          //           FloatingActionButton(
          //             onPressed: (){},
          //             child: Icon(Icons.send,color: Colors.white,size: 20,),
          //             backgroundColor: Colors.teal,
          //             elevation: 0,
          //           ),
          //           // Icon(Icons.,size: 20,), SizedBox(width: 10,),
          //           // Icon(Icons.camera_alt_sharp,size: 20,), SizedBox(width: 10,),
          //           // Icon(Icons.send,size: 25,color: Colors.teal,),
          //
          //         ],
          //
          //       ),
          //     ),
          //   ),
          // ),




        ],
      ),
      ),
      ),
      ),
    );
  }
}