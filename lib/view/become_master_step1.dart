import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../become_master.dart';
import '../network/service_handler.dart';
import '../network/services.dart';
import 'become_master_step2.dart';

final ServiceHandler _services = ServiceHandler();

class BecomeMasterStep1 extends StatefulWidget {
  const BecomeMasterStep1({Key? key}) : super(key: key);

  @override
  State<BecomeMasterStep1> createState() => _BecomeMasterStep1State();
}

class _BecomeMasterStep1State extends State<BecomeMasterStep1> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
 // TextEditingController passwordController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0), // here the desired height
        child:  AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  UserView()),
              );
            },

            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(''),
          //Text('How it works?'),
          flexibleSpace: Image(
            image: AssetImage('assets/ma.PNG'),
            height: MediaQuery.of(context).size.height * 0.3,
            fit: BoxFit.cover,
          ),
          //centerTitle: true,

        ),
      ),
      body: SingleChildScrollView(
          child: Stack(children: <Widget>[
            // backgroundColor: Colors.white,
            Column(
              children: <Widget>[

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 05, 25, 05),
                    child: Text(
                      "Full Name (As per Bank Passbook)",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.fromLTRB(25, 05, 25, 05),
                  //  padding: const EdgeInsets.all(10),
                  //height: 60,
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      // borderRadius: BorderRadius.circular(10.0),
                      //fillColor: Colors.white,
                      fillColor: Colors.white, filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black45)),
                      hintText: 'Enter Full Name',
                      hintStyle: TextStyle(fontSize: 13, color: Color(0xACACACAC)),

                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 05, 25, 05),
                    child: Text(
                      "Email Verification",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
Row(
  children: [
    Container(
      //width: 290,
      width: MediaQuery.of(context).size.width*0.85,
      //height: 50,
      padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
      //  padding: const EdgeInsets.all(10),

      child: TextField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          // borderRadius: BorderRadius.circular(10.0),
          //fillColor: Colors.white,
          fillColor: Colors.white, filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(color: Colors.black45)),
          hintText: 'yourname@example.com',
          hintStyle: TextStyle(fontSize: 13, color: Color(0xACACACAC)),
        ),
      ),
    ),
    Container(
        height: 25,
        width: 25,
        // decoration: BoxDecoration(
        //   border: Border.all(color: Color(0xD6D6D6D6)),
        //   borderRadius: BorderRadius.circular(5),
        //
        // ),
       // margin: const EdgeInsets.fromLTRB(5, 5, 0, 25),
        //padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),

        child:Image(
                image: new AssetImage("assets/verified.png"),
                height: 20,
                width: 20,
                fit: BoxFit.cover,
              ),
              ),

            ]
        ),







                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 05, 25, 05),
                    child: Text(
                      "An email will be sent to the verification, Click on the link to verify your authenticity.",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 05),
                    child: Text(
                      "Phone Verification",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),


          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.85,
               // height: 60,
                  padding: const EdgeInsets.fromLTRB(25, 05, 10, 05),
                  child: TextField(
                    controller: numberController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      // enabledBorder: OutlineInputBorder(
                      // ),
                      hintText: '7986654332',
                        hintStyle: TextStyle(fontSize: 13, color: Color(0xACACACAC)),
                        counterText: ""
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    // inputFormatters: <TextInputFormatter>[
                    //   FilteringTextInputFormatter.digitsOnly
                    // ], // Only numbers can be entered
                  ),
                ),

                Container(
                  height: 25,
                  width: 25,
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Color(0xD6D6D6D6)),
                  //   borderRadius: BorderRadius.circular(5),
                  //
                  // ),
                  // margin: const EdgeInsets.fromLTRB(5, 5, 0, 25),
                  //padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),

                  child:Image(
                    image: new AssetImage("assets/verified.png"),
                    height: 26,
                    width: 25,
                    fit: BoxFit.cover,
                  ),
                ),

              ]
            ),


          Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.85,
                //  height: 60,
                  padding: const EdgeInsets.fromLTRB(25, 05, 10, 05),
                  child: TextField(
                    controller: otpController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.black45),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      // enabledBorder: OutlineInputBorder(
                      //
                      // ),
                      hintText: 'Enter OTP',
                      hintStyle: TextStyle(fontSize: 13, color: Color(0xACACACAC)),
                    ),
                    keyboardType: TextInputType.number,
                    // inputFormatters: <TextInputFormatter>[
                    //   FilteringTextInputFormatter.digitsOnly
                    // ], // Only numbers can be entered
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Color(0xD6D6D6D6)),
                  //   borderRadius: BorderRadius.circular(5),
                  //
                  // ),
                  // margin: const EdgeInsets.fromLTRB(5, 5, 0, 25),
                  //padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),

                  child:Image(
                    image: new AssetImage("assets/img_12.png"),
                    height: 20,
                    width: 20,
                    //fit: BoxFit.cover,
                  ),
                ),

              ]
          ),

                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    //decoration: const BoxDecoration(color: Colors.black),
                    margin: EdgeInsets.all(0.0),
                    // padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      // color:Colors.white,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // background
                        onPrimary: Colors.white, // foreground
                        padding: const EdgeInsets.fromLTRB(60, 15, 70, 15),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                      // become_master();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BecomeMasterStep2()),
                        );
                      },
                      child: const Text(
                        'NEXT (1/2)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )
          ])),
      // bottomSheet: Container(
      //   padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
      //   color: Color(0xffffffff),
      //   height: 100.0,
      //   child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //
      //
      //
      //       ]
      //   ),
      // ),


    );
  }
  become_master() async{
    String name = _nameController.text;
    String number = numberController.text;
    String email = _emailController.text;
    String otp = otpController.text;
    if(name.isEmpty){
      Fluttertoast.showToast(
          msg: 'Please Enter Your Name',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }

    else if(email.isEmpty){
      Fluttertoast.showToast(
          msg: 'Please Enter Your Email',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }
    else if(number.isEmpty || number.length!=10){
      Fluttertoast.showToast(
          msg: 'Please Enter Vaild Mobile number',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }

    else if(otp.isEmpty){
      Fluttertoast.showToast(
          msg: 'Please Enter OTP',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }
    else {
    //  var json = {"tag": "become_master", "phone_no": '${numberController.text}'};
      var json = {'tag': 'become_master', 'name': '$name','phone_no':'$number',
        'email':'$email','otp':'$otp'};
      print('this is json request : $json');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BecomeMasterStep2(name: {name}, number: {number}, email: {email}, otp: {otp},)),
        );
      // var res = await _services.become_master(name, number, email, otp);
      // print('this is response : $res');
      // if (res["status"] == 1) {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => BecomeMasterStep2(name: {name}, number: {number}, email: {email}, otp: {otp},)),
      //   );
      // }
      // else {
      //   Fluttertoast.showToast(
      //       msg: '${res["message"]}',
      //       toastLength: Toast.LENGTH_LONG,
      //       gravity: ToastGravity.BOTTOM,
      //       timeInSecForIosWeb: 4,
      //       backgroundColor: Colors.red,
      //       textColor: Colors.white,
      //       fontSize: 16.0
      //   );
      // }
    }

  }

}