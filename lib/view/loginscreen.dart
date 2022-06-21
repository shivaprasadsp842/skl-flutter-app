
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:furniture_ui/network/services.dart';
import 'package:furniture_ui/view/homescreen.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'otp_screen.dart';
final Services _services = Services();

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 // bool _obscuredText = true;


  // void _toggle() {
  //   setState(() {
  //     _obscuredText = !_obscuredText;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.46), // here the desired height
          child:  AppBar(

            leading: InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) =>  LoginView()),
                // );
              },

              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.red,
            elevation: 0,
            title: Text(''),
            //Text('How it works?'),
            flexibleSpace: Container(
              color: Colors.black,
              padding: const EdgeInsets.all(0),
              height: MediaQuery.of(context).size.height * 0.56,
             child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),

              SizedBox(height: MediaQuery.of(context).size.height * 0.24,
              child:Image(
                    image: new AssetImage("assets/logoiat.PNG"),
                    height: MediaQuery.of(context).size.height * 1.0,
                 width: double.infinity,
                   fit: BoxFit.cover,
                  ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: const Text(
                      'Directly Contact Youtubers,',
                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Inter'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                      Center(
                    child: const Text(
                      'Founders & Experts ',
                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Inter'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                      Center(
                    child: const Text(
                      'Online/Offline',
                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Inter'),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  // Container(
                  //     alignment: Alignment.center,
                  //     padding: const EdgeInsets.fromLTRB(30, 15, 30,00),
                  //     child: const Text(
                  //       'Directly Contact Youtubers, Founders & Experts Online/Offline',
                  //       style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Inter'),
                  //       textAlign: TextAlign.center,
                  //     ),
                  //     ),

                     Icon(Icons.more_horiz, color: Colors.white, size: 20,),

               ],
              ),

            ),
            //centerTitle: true,

          ),
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
              child: ListView(
                children: <Widget>[
                  // Container(
                  //     child: new Image(
                  //   image: new AssetImage("assets/otp.png"),
                  //   width: double.infinity,
                  //   height: 300,
                  //   color: null,
                  //   fit: BoxFit.scaleDown,
                  //   alignment: Alignment.center,
                  // )),
                  SizedBox(height: 20,),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Login or Signup',
                        style: TextStyle( fontFamily: 'Inter',
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),

                    child: Row(
                      children: [

                        Container(
                          height: 56,
                          width: 65,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xD6D6D6D6)),
                            borderRadius: BorderRadius.circular(10),

                          ),
                          margin: const EdgeInsets.fromLTRB(5, 5, 0, 25),
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),

                          child: Row(
                              children: [


                          Image(
                            image: new AssetImage("assets/india.jpg"),
                            height: 26,
                            width: 25,
                            fit: BoxFit.cover,
                          ),
                                SizedBox(width: 3,),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                  size: 23,
                                ),
                                // Image(
                                //   image: new AssetImage("assets/india.jpg"),
                                //   height: 5,
                                //   width: 5,
                                //   fit: BoxFit.cover,
                                // ),
                          ]
                          )

                        ),


              Container(
                padding: const EdgeInsets.fromLTRB(5, 3, 5, 22),
                width: MediaQuery.of(context).size.width*0.66,
                height: 80,
                child:  TextField(
                       controller: numberController,
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(color:Color(0xD6D6D6D6), width: 1.0),
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                              ),
                              prefixIcon: Container(
                                padding: const EdgeInsets.fromLTRB(10, 13, 10, 10),
                                child: Text(
                                  '+91',
                                  style: TextStyle(fontFamily: "Inter",
                                    fontSize: 20,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Color(0xD6D6D6D6) ),
                              ),
                              fillColor: Colors.white,
                              filled: true,



                              hintText: 'Enter Phone Number',
                              hintStyle: TextStyle( fontFamily: 'Inter',color: Color(0xB7B7B7B7), fontSize: 15),
                              counterText: ""
                          ),
                         style: TextStyle(fontSize: 20, fontFamily: "Inter",),
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ], // Only numbers can be entered
                        ),
                        ),
                      ],
                    )




                  ),

                  Container(
                    height: 60,
                      width: MediaQuery.of(context).size.width*1,
                    //color: Colors.black,
                    padding: const EdgeInsets.fromLTRB(1, 05, 0, 05),
                    child:
                        // An enabled button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // background
                            onPrimary: Colors.black, // foreground
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),

                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        //  onPressed: getData,

                          onPressed: (){
                            callSignUp();
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Otp()),
                            // );
                          },
                        ),

                  ),
                SizedBox( height: MediaQuery.of(context).size.height * 0.15,),
                Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                       Text('Trouble in Sigining up', style: TextStyle( fontFamily: 'Inter',fontSize: 10, fontWeight: FontWeight.bold,)),
                      SizedBox(height: 7,),
                       Text('By continuing, you agree to our', style: TextStyle( fontFamily: 'Inter',fontSize: 10,color: Color(0x89898989),)),
                      //SizedBox(height: 180,),
                       Text(' Terms of Service Privacy Policy Content Policy', style: TextStyle( fontFamily: 'Inter',fontSize: 10,color: Color(0x89898989),)),



                    ],
                  ),
                  ),

                ],
              )
          ),
        ),
      // bottomSheet: Container(
      //   color: Colors.white54,
      //   height: MediaQuery.of(context).size.height * 0.1,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Container(
      //         height: 60,
      //         // color: Colors.green,
      //         child: Center(
      //           child: Column(
      //             // mainAxisAlignment: MainAxisAlignment.center,
      //             // mainAxisSize: MainAxisSize.min,
      //             children: <Widget>[
      //               Text('Trouble in Sigining up', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,)),
      //               SizedBox(height: 7,),
      //               Text('By continuing, you agree to our', style: TextStyle(fontSize: 10,color: Color(0x89898989),)),
      //               //SizedBox(height: 180,),
      //               Text(' Terms of Service Privacy Policy Content Policy', style: TextStyle(fontSize: 10,color: Color(0x89898989),)),
      //
      //
      //             ],
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      //   ),
      );

  }

  // Future getData() async {
  //   HttpHelper helper = HttpHelper();
  //   await helper
  //       .login(nameController.text, passwordController.text)
  //       .then((value) => {
  //             if (1 == value)
  //               {
  //                 Navigator.pushReplacement(context,
  //                     MaterialPageRoute(builder: (BuildContext context) {
  //                   return HomeView();
  //                 }))
  //               }
  //             else
  //               {
  //                 showAlertDialog(
  //                     context, 'Login', "invalid username and password")
  //               }
  //           });
  // }
  callSignUp() async{
    if(numberController.text.isEmpty || numberController.text.length!=10){
      Fluttertoast.showToast(
          msg: 'Please Enter Vaild Phone Number',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    //  print("hello");
    }else {
      var json = {"tag": "signup", "phone_no": '${numberController.text}'};
      print('this is json request : $json');
      Random random = new Random();
      int randomNumber = random.nextInt(100);
      var res = await _services.signup(json);
      print('this is response : $res');

      if (res["status"] == 1) {
        if(res["message"]=='Logged in!')
          {

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeView()),
            );
          }
        else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Otp()),
          );
        }
      }
      else {
        Fluttertoast.showToast(
            msg: '${res["message"]}',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 4,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }
    }

  }
}
