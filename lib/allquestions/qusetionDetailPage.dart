import 'package:flutter/material.dart';
import 'package:furniture_ui/allquestions/qusetionMessageModel.dart';

class QuestionDetailPage extends StatefulWidget{
  @override
  _QuestionDetailPageState createState() => _QuestionDetailPageState();
}

class _QuestionDetailPageState extends State<QuestionDetailPage> {
  void choiceAction(int choice) {

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => Rating()),
    // );

  }
  List<QuestionMessage> messages = [
    QuestionMessage(messageContent: "Why do Indians have gods with face resembling to animals like Monkey , Elephant, Lion, Boar ?", messageType: "receiver"),
    QuestionMessage(messageContent: "How have you been?", messageType: "receiver"),
    //  QuestionMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    // QuestionMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    // QuestionMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
  bool viewVisible = false ;
  bool hideVisible = true ;

  void showWidget(){
    setState(() {
      viewVisible = true ;
      hideVisible = false  ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
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
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/img_41.png"),
                          color: Color(0xFF818181),
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text('Complete Question',  style: TextStyle(height: 1.2, color: Color(0xFF6E7983), fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Inter'), ),
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
                  icon: Icon(Icons.arrow_back_ios,color: Colors.grey,),
                ),
                SizedBox(width: 2,),
                CircleAvatar(
                  child: Image(
                    image: new AssetImage("assets/img_2.png"),
                    width: 40,
                    height: 40,
                    color: null,
                    //fit: BoxFit.scaleDown,
                    alignment: Alignment.center,
                  ),
                  maxRadius: 20,
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Rajiv Talreja",style: TextStyle(  color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                        fontSize: 15,),),
                      SizedBox(height: 6,),
                      Padding(
                        padding: EdgeInsets.only(left: 00, right: 0, top: 0, bottom:0),
                        child: Row(
                          children: [
                            Image(
                              image: new AssetImage("assets/online.png"),
                              width: 10,
                              height: 10,
                              color: null,
                              //fit: BoxFit.scaleDown,
                              alignment: Alignment.center,
                            ),
                            SizedBox(width:2),
                            Text('Online', style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                              fontSize: 10,),),
                          ],
                        ),

                      ),

                    ],
                  ),
                ),
                // Icon(Icons.settings,color: Colors.black54,),

              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(messages[index].messageContent, style: TextStyle( color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      fontSize: 15,),),
                  ),
                ),
              );
            },
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
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: showWidget,
                      child: const Text('Accept & Answer',
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
          ),
          SizedBox(height:10,width:10,),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child:  Align(
              alignment: Alignment.bottomLeft,
              child:  Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 5,bottom: 10,top: 10),
                      height:85,
                      width: MediaQuery.of(context).size.width*0.83,
                      //color: Colors.green,
                      child:

                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 5,),
                            GestureDetector(
                              onTap: (){
                              },
                              child: Container(

                                //color: Colors.white,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.emoji_emotions_outlined, color: Colors.grey, size: 25, ),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Expanded(
                              child:TextField(
                                maxLines: 1,
                                decoration: InputDecoration.collapsed(
                                    hintText: "Type a message",
                                    hintStyle: TextStyle(fontFamily: 'Inter',
                                        color: Color(0xFFC4C4C4),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13
                                    )),
                              ),
                            ),
                            // SizedBox(width: 15,),
                            // Expanded(
                            //   child:TextField(
                            //     maxLines: 2,
                            //     decoration: InputDecoration.collapsed(hintText: ""),
                            //   ),
                            // ),
                            SizedBox(width: 15,),
                            IconButton(
                              icon: new Image.asset('assets/img_23.png', width: 20,height: 20, ),

                              onPressed: () {

                              },
                            ),
                            FloatingActionButton(
                              onPressed: (){},
                              child: Icon(Icons.camera_alt_rounded,color: Colors.black,size: 20,),
                              backgroundColor: Colors.white,
                              elevation: 0,
                            ),

                            SizedBox(
                              width: 3,
                            )
                            // Icon(Icons.,size: 20,), SizedBox(width: 10,),
                            // Icon(Icons.camera_alt_sharp,size: 20,), SizedBox(width: 10,),
                            // Icon(Icons.send,size: 25,color: Colors.teal,),

                          ],

                        ),
                      ),
                    ),
                    Container(

                      height: 90,
                      child: FloatingActionButton(
                        onPressed: (){},
                        child: Icon(Icons.mic,color: Colors.white,size: 20,),
                        backgroundColor: Colors.teal,
                        elevation: 0,
                      ),
                    ),
                  ],
                ),

              ),
            ),




        ],
      ),
    );
  }
}