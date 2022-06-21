import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'all_questions.dart';
import 'send_leave_question.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CheckRecharge extends StatelessWidget {
  const CheckRecharge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//backgroundColor: Color(0xFFEFEFEF) ,
      //theme: new ThemeData(scaffoldBackgroundColor:  Color(0xFFEFEFEF)),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  AllLeaveQuestion()),
            );
          },

          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
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
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white, size: 20,),
                ),
                SizedBox(width: 2,),
                CircleAvatar(
                  child: Image(
                    image: new AssetImage("assets/img_2.png"),
                    width: 45,
                    height: 45,
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
                            SizedBox(width:5),
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),



        actions: [
          PopupMenuButton<int>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
              // new PopupMenuItem<int>(
              //     value: 1, child: new Text('Video Call')),
              // new PopupMenuItem<int>(
              //     value: 2, child: new Text('End Chat')),
              // new PopupMenuItem<int>(
              //     value: 3, child: new Text('Rate Now')),
              // new PopupMenuItem<int>(
              //     value: 4, child: new Text('Report')),
              // new PopupMenuItem<int>(
              //     value: 5, child: new Text('Delete Chat'))
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
        minHeight: MediaQuery.of(context).size.height*0.6,
        maxHeight: MediaQuery.of(context).size.height*0.8,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)),
        panel: Container(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
          height: MediaQuery.of(context).size.height*0.55,
          width:double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(20),
              color:Color(0xffffffff),

            //shape: BoxShape.circle,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(26.0, 30, 20, 0),
                        child: Text(
                          "Insufficient wallet ",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(26.0, 0, 20, 20),
                        child: Text(
                          "balance !",
                          style: TextStyle(fontFamily: 'Inter',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                    ),
                    SizedBox(height:10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: <Widget>[
                        SizedBox( width: 25,),
                        Text('Available Balance',    style: TextStyle(fontFamily: 'Inter',
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),),
                        SizedBox(width: MediaQuery.of(context).size.width*0.35,),
                        Text('Rs. 0.00', style: TextStyle(fontFamily: 'Inter',color:Colors.red, fontSize: 15, fontWeight: FontWeight.w700)),
                      ],
                    ),


                    SizedBox(height:10,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 5),
                      child:Container(
                        height:1,

                        width: MediaQuery.of(context).size.width*0.85,
                        color: Color(0xFFC4C4C4),
                      ),
                      ),
                    // Divider(
                    //   height: 10,
                    //   thickness: 2,
                    //   indent: 20,
                    //   endIndent: 2,
                    //  // color: Colors.black,
                    //  color: Color(0xFFC4C4C4),
                    // ),

                    SizedBox(height:10,),
                    Padding(

                      padding: const EdgeInsets.fromLTRB(15.0, 10, 10, 15),
                      child:  Container(
                          width: MediaQuery.of(context).size.width*0.85,
                          height: MediaQuery.of(context).size.height*0.26,
                        padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xF6F6F6F6),
                          //shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                        Text(
                          'That’s not a issue. ',style: TextStyle(
                          fontSize: 13,fontFamily: 'Inter',
                          color: Colors.black87,fontWeight: FontWeight.w600, height: 1.3,
                        ), //Textstyle
                        ),
                           Text(
                          'Now you can recharge your wallet with combo offers & can continue your conversation. ',style: TextStyle(
                          fontSize: 13,fontFamily: 'Inter',
                          color: Colors.black87,fontWeight: FontWeight.w600, height: 1.3,
                        ), //Textstyle
                        ),



                        ]
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height:10,width:20,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          child:ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // background
                            onPrimary: Colors.white, // foreground
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                            side: BorderSide(
                              width: 1.0,
                              color: Colors.black,
                            ),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                          child: const Text('CANCEL',
                            style: TextStyle(
                              color:Colors.black,fontFamily: 'Inter',
                              fontSize:13,fontWeight: FontWeight.w700
                            ),),
                          onPressed: () => Navigator.pop(context),
                        ),
                        ),

                        SizedBox(height:10,width:10,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.55,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // background
                            onPrimary: Colors.white, // foreground
                            padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {
                            // Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LeaveQuestion()),
                            );
                          },
                          child: const Text('RECHARGE & CONTINUE',
                            style: TextStyle(fontFamily: 'Inter',
                              color:Colors.white,fontWeight: FontWeight.w700,
                              fontSize:13,
                            ),
                          ),

                        ),
                        ),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
      bottomSheet: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 400.0,
        width:double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(50),
          color:Color(0xffffffff),
            boxShadow: [BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),]
          //shape: BoxShape.circle,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 10, 20, 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            "Insufficient wallet banance !",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height:10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        SizedBox( width: 25,),
                        Text('Available Balance',    style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(width: 100,),
                        Text('Rs. 0.00', style: TextStyle(color:Colors.red, fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height:10,),
                    Divider(
                      height: 10,
                      thickness: 2,
                      indent: 20,
                      endIndent: 0,
                      color: Colors.black26,
                    ),
                    Padding(

                      padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 15),
                      child:  Container(
                        width:300,
                        padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 100),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(05),
                          color: Color(0xF6F6F6F6),
                          //shape: BoxShape.circle,
                        ),
                        child:Text(
                          'That’s not a issue. Now you can recharge your wallet with combo offers & can continue your conversation. ',style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ), //Textstyle
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height:10,width:15,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // background
                            onPrimary: Colors.white, // foreground
                            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                            side: BorderSide(
                              width: 1.0,
                              color: Colors.black,
                            ),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                          child: const Text('Cancel',
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
                            padding: const EdgeInsets.fromLTRB(30, 16, 30, 16),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {
                            // Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LeaveQuestion()),
                            );
                          },
                          child: const Text('RECHARGE & CONTINUE',
                            style: TextStyle(
                              color:Colors.white,
                              fontSize:13,
                            ),
                          ),

                        ),
                      ],
                    ),

                  ],
                ),
            )
          ],
        ),


    );
  }
}
