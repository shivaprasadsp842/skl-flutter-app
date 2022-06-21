import 'package:flutter/material.dart';
import 'package:furniture_ui/success.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'all_questions.dart';

class LeaveQuestion extends StatelessWidget {
  const LeaveQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0) ,
      //theme: new ThemeData(scaffoldBackgroundColor:  Color(0xFFEFEFEF)),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {

              Navigator.pop(context);

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
                    width: 50,
                    height: 50,
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
                      Text("Rajiv Talreja",style:
                      TextStyle( fontSize: 15 ,fontWeight: FontWeight.w700, fontFamily: 'Inter'),),
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
                                fontSize: 8, fontFamily: 'Inter', fontWeight: FontWeight.w400),),
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



        iconTheme: IconThemeData(color: Colors.black),
        //centerTitle: true,
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        //  color: Colors.black,
      ),
      body: SingleChildScrollView(

      child: Column(
        children: [

        SizedBox(
          height: 5,),

        Container(
          padding: EdgeInsets.only(left: 3,top: 0,bottom: 10, right: 3),
          child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.751,
        child:  Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: TextField(
                  maxLines: 30,
                  decoration: InputDecoration.collapsed(hintText: "Type a message", hintStyle:
                  TextStyle(color: Color(0xC4C4C4C4), fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'Inter')),
                ),
              )
          ),
          ),
          ),

          SizedBox(height:10,width:10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[




              SizedBox(height:10,width:10,),

            ],
          ),


        ],
      ),
      ),
      bottomSheet: Container(
       // color: Color(0xFFAEABAB),

        height: 140.0,
        child: Container(
          padding: EdgeInsets.only(left: 3,top: 5,bottom: 10, right: 3),
          height: 60,
          color: Color(0xFFF0F0F0),
          width: double.infinity,
          //color: Colors.white,
          child: Column(
            children: [


          Card(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        child:   Row(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  height: 30,
                  width: 30,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(Icons.emoji_emotions_outlined, color: Color(0xFF626262), size: 22, ),
                ),
              ),
              SizedBox(width: 15,),
              Expanded(
                child:TextField(
                  maxLines: 1,
                  decoration: InputDecoration.collapsed(hintText: ""),
                ),
              ),

              SizedBox(width: 15,),

              IconButton(
                icon: new Image.asset('assets/img_23.png', width: 18,height: 20, ),

                onPressed: () {

                },
              ),

      SizedBox(
        height: 30,
        child:CircleAvatar(
                backgroundColor: Colors.black,
                child:  FloatingActionButton(
                  onPressed: (){},
                  child: Icon(Icons.camera_alt_rounded,color: Colors.white,size: 18,),
                  backgroundColor: Colors.black,
                  elevation: 0,
                ),
              ),
              ),


      SizedBox(
        height: 30,
        child: CircleAvatar(
        backgroundColor: Colors.black,
        child: FloatingActionButton(
                onPressed: (){},
                child: Icon(Icons.mic,color: Colors.white,size: 18,),
                backgroundColor: Colors.black,
                elevation: 0,
              ),
              ),
              ),
              SizedBox(width: 8,),
            ],

          ),
          ),



              SizedBox(height: 5,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    width: MediaQuery.of(context).size.width*0.59,
                    child:ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, // background
                      onPrimary: Colors.white, // foreground
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                    icon: Icon(Icons.star,color: Colors.white, size: 14,),  //icon data for elevated button
                    label: Text("Preoritise Question",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:13,
                        fontFamily: 'Inter',
                          fontWeight: FontWeight.w700
                      ),),
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return SlidingUpPanel(
                            minHeight: MediaQuery.of(context).size.height*0.80,
                              backdropEnabled: true,
                          //     borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(20.0),
                          // topRight: Radius.circular(20.0)),
                          panel: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30.0, 10, 20, 20),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      child: Text(
                                        "Be The First To Be Answered Fast",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF6CA0D0),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              //  Text("2"+"nd", style: TextStyle(fontFamily: 'Inter',color: Colors.black)),
                                Text('2nd Question',
                                  style: TextStyle(
                                    fontSize: 29,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Inter'
                                  ),),
                                SizedBox(height:10,),
                                Container(
                                  padding: const EdgeInsets.fromLTRB(30, 10, 20, 00),
                                  child:    TextField(
                                    maxLength: 10,
                                    maxLines: 1,
                                    minLines: 1,

                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      //labelText: "Phone number",
                                      hintText: "  ₹ " + "Amount",
                                      contentPadding: EdgeInsets.all(15),
                                      counter: Offstage(),//  <- you can it to 0.0 for no space
                                      isDense: true,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)
                                        //border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 150.0,
                                      height: 45.0,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.black, // background
                                          onPrimary: Colors.white, // foreground
                                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                                          side: BorderSide(width: 1, color: Colors.black,),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: (){},
                                        child: const Text('Check Priority',
                                          style: TextStyle(
                                            color:Colors.white,
                                            fontSize:15,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height:30,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: <Widget>[

                                    ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black, // background
                                        onPrimary: Colors.white, // foreground
                                        padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                                        shape: new RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      onPressed: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => SuccessFull()),
                                        );
                                      },
                                      icon:ImageIcon(AssetImage("assets/img_13.png"), size: 15,
                                        //  color: Color(0xFF3A5A98),
                                      ), //icon data for elevated button
                                      label: Text("SEND AS PREORITISED QUESTION",
                                        style: TextStyle(
                                          color:Colors.white,
                                          fontSize:13,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700
                                        ),), //label text
                                    ),

                                  ],
                                ),

                              ],
                            ),

                          );
                        },
                      );
                    },
                  ),
                  ),


                  SizedBox(height:10,width:10,),

                  Container(
                    width: MediaQuery.of(context).size.width*0.30,
                    child:   ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, // background
                      onPrimary: Colors.white, // foreground
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SuccessFull()),
                      );
                    },
                    icon:ImageIcon(AssetImage("assets/img_13.png"), size: 14,
                    //  color: Color(0xFF3A5A98),
                      ),

                    label: Text("Send",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:13,
                          fontFamily: 'Inter',
                        fontWeight: FontWeight.w700
                      ),),

                  ),
                  ),
                ],
              ),
          ],

        ),



      ),
      ),



    );
  }
}
