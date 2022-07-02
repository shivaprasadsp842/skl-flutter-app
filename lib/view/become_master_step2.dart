import 'dart:convert';
import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../network/services.dart';
import 'master.dart';
import 'package:http/http.dart';

final Services _services = Services();

class BecomeMasterStep2 extends StatefulWidget {
  final  name ;
  final  number ;
  final  email ;
  final  otp ;

   BecomeMasterStep2({Key? key, this.name, this.number, this.email, this.otp}) : super(key: key);

  @override
  State<BecomeMasterStep2> createState() => _BecomeMasterStep2State();
}

class _BecomeMasterStep2State extends State<BecomeMasterStep2> {

  final GlobalKey _formKey = GlobalKey<FormState>();
  
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _urlController = TextEditingController();
  final _controller = TextEditingController();

  @override
  void dispose() {
    // other dispose methods
    _controller.dispose();
    super.dispose();
  }
  bool isChecked = false;

  final List<String> platformItems = [
    'Instagram',
    'Facebook',
    'Whatsapp',
    'Yahoo',
    "Youtube",
    "LinkedIn"
  ];
  String? selectedplatformValues;

  List<DropdownMenuItem<String>> _addplatformAfterItems(List<String> platformItems) {
    List<DropdownMenuItem<String>> _menuItemsplatform = [];
    for (var itemplatform in platformItems) {
      _menuItemsplatform.addAll(
        [
          DropdownMenuItem<String>(
            value: itemplatform,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                itemplatform,
                style: const TextStyle(
                    fontSize: 12,fontFamily: 'Inter',
                    fontWeight: FontWeight.w600, height: 0.2
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (itemplatform != platformItems.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(height: 0, color: Colors.transparent,),
            ),
        ],
      );
    }
    return _menuItemsplatform;
  }

  List<int> _getplatformIndexes() {
    List<int> _dividersplatformIndexes = [];
    for (var i = 0; i < (platformItems.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividersplatformIndexes.add(i);
      }
    }
    return _dividersplatformIndexes;
  }


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height:40),

                  Visibility(
                    visible: false,
                    child: TextFormField(
                    //  controller:name,
                    )
                    ),




                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      //decoration: const BoxDecoration(color: Colors.black),
                      margin: EdgeInsets.all(15.0),
                      // padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:Colors.teal[600],
                      ),

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal[600],// background
                          onPrimary: Colors.black, // foreground
                          padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => BecomeMasterStepNext()),
                          // );
                        },
                        child: const Text(
                          '+ ADD SOCIAL MEDIA HANDLE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,

                          ),
                        ),
                      ),
                    ),
                  ),
       // Text(widget.name.toString(), style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),),
       // Text(widget.number.toString(), style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),),
       // Text(widget.otp.toString(), style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),),
       // Text(widget.email.toString(), style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),),
                          Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(35, 10, 45, 05),
                      child: Text(
                        "CHOOSE PLATFORM",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child:  Container(
                        height: 55.0,
                        width: MediaQuery.of(context).size.width*1,
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 05),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          //shape: BoxShape.circle,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            dropdownElevation: 12,
                            hint: Text(
                              'Choose Platform',
                              style: TextStyle(fontSize: 12,
                                color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                            ),
                            items: _addplatformAfterItems(platformItems),
                            customItemsIndexes: _getplatformIndexes(),
                            customItemsHeight: 1,
                            value: selectedplatformValues,
                            onChanged: (value) {
                              setState(() {
                                selectedplatformValues = value as String;
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 30,
                            itemHeight: 28,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(35, 10, 45, 05),
                      child: Text(
                        "PASTE PROFILE URL / LINK",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(

                    padding: const EdgeInsets.fromLTRB(30, 05, 30, 05),
                    //  padding: const EdgeInsets.all(10),

                    child: TextField(
                      controller: _urlController,
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
                        hintText: 'Paste profile url/ link',
                        hintStyle: TextStyle(fontSize: 13, color: Color(0xFFA3A3A3), ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(0, 10, 40, 0),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF575757), // background
                          onPrimary: Colors.white, // foreground
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        ),
                        onPressed: () {
                          platformUrl();
                        },
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox( height: MediaQuery.of(context).size.height*0.25,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 30,),
                      Theme(
                        child:Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          checkColor: Colors.white,
                          // fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                            print(isChecked);
                          },
                        ),
                        data: ThemeData(
                          primarySwatch: Colors.blue,
                          unselectedWidgetColor: Color(0xFF0067FA), // Your color
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 10, 45, 10),
                          child: Text(
                            "Yes, I Agree to all Terms & Conditions", style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF0067FA),
                            //fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      ),
                      // Switch(
                      //   value: isSwitched,
                      //   activeColor: Colors.blue,
                      //   onChanged: (value) {
                      //     print("VALUE : $value");
                      //     setState(() {
                      //       isSwitched = value;
                      //     });
                      //   },
                      // ),


                    ],
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
                          padding: const EdgeInsets.fromLTRB(60, 15, 60, 15),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {
                          //become_master();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Master()),
                          );
                        },
                        child: const Text(
                          'SUBMIT (2/2)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(25, 5, 45, 10),
                      child: Text(
                        "Send Profile For Verification", style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        //fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          )
      ),

      // bottomSheet: Container(
      //   color: Colors.white,
      //   height: MediaQuery.of(context).size.height * 0.16,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //
      //     ],
      //   ),
      //   ),


    );
  }

// ===============================  Click On Save Button     ===============================

  platformUrl() async{
    String url = _urlController.text;

    if(selectedplatformValues ==''){
      Fluttertoast.showToast(
          msg: 'Please Select Platform',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      //print();
    }
    else if(_urlController.text.isEmpty ){
      Fluttertoast.showToast(
          msg: 'Please Enter URL',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }
    else {
      var json = {
                  'tag': 'platform_url',
                  'platform':'$selectedplatformValues',
                  'url':'$url',
                  'user_id':'IAT-1'
                  };

      print('this is json request : $json');
      Random random = new Random();
      int randomNumber = random.nextInt(100);
      var res = await _services.platform_url(json);
      print('this is response : $res');




      if (res["status"] == 1) {
        if(res["message"]=='Platform And Url Added!')
        {
          print('Platform And Url Added');
          Fluttertoast.showToast(
              msg: '${res["message"]}',
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 4,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0
          );
        }
        else {

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


  // ==================== Click On  Submit Button   ===============================

  become_master() async{
    String url = _urlController.text;

    if(selectedplatformValues ==''){
      Fluttertoast.showToast(
          msg: 'Please Select Platform',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      //print();
    }
    else if(_urlController.text.isEmpty ){
      Fluttertoast.showToast(
          msg: 'Please Enter URL',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }
    else if(isChecked=='false'){
      Fluttertoast.showToast(
          msg: 'Click The Checkbok and Continue',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }

    else {
      var json = {
        'tag': 'become_master',
        'name': widget.name.toString(),
        'phone_no':widget.number.toString(),
        'email': widget.email.toString(),
        'otp': widget.otp.toString(),
        'platform':'$selectedplatformValues',
        'url':'$url',
        'is_agree':'$isChecked',
        'user_id':'IAT-1'};

      print('this is json request : $json');
      Random random = new Random();
      int randomNumber = random.nextInt(100);
      var res = await _services.become_master(json);
      print('this is response : $res');

      if (res["status"] == 1) {
        if(res["message"]=='Congratulations!')
        {
          // send the passing master data into Master Class
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Master()),
          );
        }
        else {

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