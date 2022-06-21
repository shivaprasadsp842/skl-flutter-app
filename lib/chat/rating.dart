import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'chat_screen.dart';
class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //title: _title,
      home:Scaffold(
        //backgroundColor:  Color(0x2EAEABAB),
        backgroundColor:  Colors.white,
        appBar: AppBar(
          // leading: InkWell(
          //   onTap: () {
          //     // Navigator.pop(context);
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) =>  ChatScreen()),
          //     );
          //   },
          //
          //   child: Icon(
          //     Icons.arrow_back_ios,
          //     color: Colors.grey,
          //   ),
          // ),
          backgroundColor: Color(0xFF301C16),
          elevation: 0,
          title:  Stack(
            children: <Widget>[

              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(0, 015, 0, 10),
                  child: Text(
                    'YOUR REVIEW MATTERS THE MOST',
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  )),
            ],
          ),

          //centerTitle: true,

        ),
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: RatingStatefulView(),
          ),
        ),

      ),
    );
  }
}
class RatingStatefulView extends StatefulWidget {
  const RatingStatefulView({Key? key}) : super(key: key);

  @override
  State<RatingStatefulView> createState() => _RatingStatefulViewState();
}

class _RatingStatefulViewState extends State<RatingStatefulView > {
  //final TextEditingController _nameController = TextEditingController();

//  Price

  String? dropdownValuePrice = 'RUPEES - (Rs.)';
  List<String> dropdownItemsPrice = <String>[
    'RUPEES - (Rs.)',
    '300',
    '400',
    '500',
    "600",
    "700"
  ];


  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: IntrinsicHeight(
          child:  Padding(
            padding: const EdgeInsets.fromLTRB(020, 0, 20, 20),
            //color: Colors.red,
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

            Padding(
            padding: const EdgeInsets.fromLTRB(0,40,0,0), // Border radius
            child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(5), // Border radius
                    child: ClipOval(child:   Image(
                      image: new AssetImage("assets/img_2.png"),
                      width: 200,
                      height: 200,
                      //color: null,
                      //fit: BoxFit.scaleDown,
                      alignment: Alignment.center,
                    )
                    ),
                  ),
                ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(

                    padding: const EdgeInsets.fromLTRB(10, 0, 00, 10),
                    child: Text(
                      "Rajiv Talreja", style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Inter"
                    ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                    IconButton(
                      icon: Icon(Icons.star,size: 40,color: Color(0xFFFDB600),),
                      onPressed: () {

                      },
                    ),

                    SizedBox(width: 10),
                    IconButton(icon: Icon(Icons.star,size: 40,color:  Color(0xFFFDB600),),
                      onPressed: () {

                      },
                    ),SizedBox(width: 10),
                    IconButton(icon: Icon(Icons.star,size: 40,color:  Color(0xFFFDB600),),
                      onPressed: () {

                      },
                    ),SizedBox(width: 10),
                    IconButton(icon: Icon(Icons.star,size: 40,color:  Color(0xFFFDB600),),
                      onPressed: () {

                      },
                    ),SizedBox(width: 10),
                    IconButton(icon: Icon(Icons.star,size: 40,color: Color(0xFFC4C4C4),),
                      onPressed: () {

                      },
                    ),

                  ],

                ),


                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(width: 1),
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Image.asset("assets/img_14.png"),
                        iconSize: 35,
                        onPressed: () {

                        },
                      ),
                    ),

                    SizedBox(width: 8),
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Image.asset("assets/img_15.png"),iconSize: 35,
                        onPressed: () {

                        },
                      ),
                    ),


                    SizedBox(width: 8),
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Image.asset("assets/img_16.png"),iconSize: 40,
                        onPressed: () {

                        },
                      ),
                    ),

                    SizedBox(width: 8),
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Image.asset("assets/img_17.png"),iconSize: 35,
                        onPressed: () {

                        },
                      ),
                    ),

                    SizedBox(width: 8),
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Image.asset("assets/img_18.png"),iconSize: 40,
                        onPressed: () {

                        },
                      ),
                    ),

                  ],

                ),



                SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(

                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child:
                          TextField(
                            maxLength: 500,
                            maxLines: 7,
                            decoration: InputDecoration(

                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide( color: Color(0xFF6E7983), width: 0.5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide( color: Color(0xFF6E7983), width: 0.5),
                              ),
                              hintText: 'Describe your experience ',
                                hintStyle: TextStyle(fontSize: 20, color: Color(0x806E7983), fontWeight: FontWeight.w700, fontFamily: "Inter", height: 1.2)
                            ),
                          ),
                          // TextField(
                          // //  maxLength: 500,
                          //   maxLines: 5,
                          //   decoration: InputDecoration.collapsed(
                          //
                          //       hintText: "Describe your experience ",
                          //       hintStyle: TextStyle(fontSize: 15, color: Color(0x806E7983), fontWeight: FontWeight.w700, fontFamily: "inter", height: 1.2)),
                          // ),
                        )
                    ),






                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    new Flexible(child:  Align(
                      alignment: Alignment.bottomCenter,
                      child:  Container(
                        width: MediaQuery.of(context).size.width*0.7,
                        margin: EdgeInsets.all(10.0),
                        // padding: EdgeInsets.all(12.0),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(50),
                          color:Colors.black,

                        ),
                        child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // background
                            onPrimary: Colors.white, // foreground
                            padding: const EdgeInsets.fromLTRB(70, 15, 70, 15),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0),
                            ),

                          ),
                          onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  ChatScreen()),
                            );
                          },
                          child: const Text('SUBMIT',
                            style: TextStyle(
                              color:Colors.white,
                              fontSize:20,

                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ),
                      ),

                    ),
                    ),
                  ], ),


                //SizedBox(height: 20.0,),






              ],
            ),
          ),
        ));
  }
}