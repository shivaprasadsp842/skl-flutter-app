import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'chat_screen.dart';
import 'check_chat_recharge.dart';

class ChatRules extends StatefulWidget {
  const ChatRules({Key? key}) : super(key: key);

  @override
  _ChatRulesState createState() => _ChatRulesState();
}

class _ChatRulesState extends State<ChatRules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      // theme: new ThemeData(scaffoldBackgroundColor:  ),
      appBar: AppBar(

        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  CheckChatRecharge()),
            );
          },

          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
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
                      Text("Rajiv Talreja",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.w600, fontFamily: 'Inter'),),
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
                                fontSize: 8, fontFamily: 'Inter'),),
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

        actions: [
Card(
  color: Color(0xE5E5E5E5),

      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 17, 10, 10),
        child:  Text('00 : 00 : 00', style: TextStyle(fontWeight: FontWeight.bold),),
),
),

          PopupMenuButton<int>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
             //  new PopupMenuItem<int>(
             //      value: 1, child: new Text('Video Call')),
             //  new PopupMenuItem<int>(
             //      value: 2, child: new Text('End Chat')),
             //  new PopupMenuItem<int>(
             //      value: 3, child: new Text('Rate Now')),
             // new PopupMenuItem<int>(
             //      value: 4, child: new Text('Report')),
             // new PopupMenuItem<int>(
             //      value: 5, child: new Text('Delete Chat'))
            ],
            // onSelected: (int value) {
            //   setState(() { _value = value; });
            // }
          )

        ],
        iconTheme: IconThemeData(color: Colors.black),
        //centerTitle: true,
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        //  color: Colors.black,
      ),
      body: SlidingUpPanel(
        // backdropEnabled: true,
        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0)),
    panel: Container(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
    height: MediaQuery.of(context).size.height*0.5,
    width:double.infinity,
    decoration: BoxDecoration(
    border: Border.all(color: Colors.white70, width: 1),
    borderRadius: BorderRadius.circular(20),
    color:Color(0xffffffff),

    //shape: BoxShape.circle,
    ),
    child:Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 10,),
         Center(
           child: Text(
             "Rules To Follow",
             style: TextStyle(
               fontSize: 15,
               color: Colors.black,
               fontWeight: FontWeight.w700,
               fontFamily: 'Inter'
             ),
           ),
         ),





          Padding(

            padding: const EdgeInsets.fromLTRB(0.0, 10, 10, 10),
            child:  Container(
              padding: const EdgeInsets.fromLTRB(05.0, 10, 10, 10),

              child: Column(
                children: <Widget>[
                  new ListTile(
                    leading: new MyBullet(),
                    title: new Text('User shall refrain from raising any personal queries or advice on the Consult platform which are not related to a specific topic mentioned. ',
                      style: TextStyle(
                          color:Colors.black,fontFamily: 'Inter',
                          fontSize:13,fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: new MyBullet(),
                    title: new Text('User understands and agrees to provide accurate information and will not use the Consult platform for any acts that are considered to be illegal in nature.',   style: TextStyle(
                        color:Colors.black,fontFamily: 'Inter',
                        fontSize:13,fontWeight: FontWeight.w400
                    ),),
                  ),
                  new ListTile(
                    leading: new MyBullet(),
                    title: new Text('Users shall not use abusive language on the Consult platform.',
                      style: TextStyle(
                          color:Colors.black,fontFamily: 'Inter',
                          fontSize:13,fontWeight: FontWeight.w400
                      ),),
                  ),
                  // new ListTile(
                  //   leading: new MyBullet(),
                  //   title: new Text('No provision of this Agreement shall be deemed to be waived and no breach excused'),
                  // ),
                  // new ListTile(
                  //   leading: new MyBullet(),
                  //   title: new Text('Creator reserves the right to suspend or terminate services provided.'),
                  // )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // background
                  onPrimary: Colors.white, // foreground
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                ),
                onPressed: () {
                  // Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()),
                  );
                },
                child: const Text('GOT IT, CONTINUE',
                  style: TextStyle(
                      color:Colors.white,fontFamily: 'Inter',
                      fontSize:13,fontWeight: FontWeight.w700
                  ),
                ),

              ),
            ],
          ),

        ],
      ),

    ),
      ),
      // bottomSheet:
      // ),
    );
  }
}
class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
        color: Colors.black12,
        shape: BoxShape.circle,
      ),
    );
  }
}