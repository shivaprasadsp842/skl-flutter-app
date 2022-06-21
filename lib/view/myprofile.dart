

import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

import '../network/services.dart';
import 'homescreen.dart';

final Services _services = Services();

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final TextEditingController _designationController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();
  PickedFile? imageFile;
  Future<void>_showChoiceDialog(BuildContext context)
  {
    return showDialog(context: context,builder: (BuildContext context){

      return AlertDialog(
        title: Text("Profile Photo",style: TextStyle(color: Colors.black,   fontWeight: FontWeight.w700,
            fontSize: 20,
            fontFamily: 'Inter'),),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Divider(height: 1,color: Colors.black,),
              ListTile(
                onTap: (){
                  _openGallery(context);
                },
                title: Text("Gallery",
                  style: TextStyle(

                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      fontFamily: 'Inter'
                  ),),
                leading: Icon(Icons.account_box,color: Colors.black,),
              ),

              Divider(height: 1,color: Colors.black,),
              ListTile(
                onTap: (){
                  _openCamera(context);
                },
                title: Text("Camera",
                  style: TextStyle(

                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      fontFamily: 'Inter'
                  ),),
                leading: Icon(Icons.camera_alt_rounded,color: Colors.black,),
              ),
            ],
          ),
        ),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Profile', style:TextStyle(color: Colors.black, fontWeight: FontWeight.w700,
            fontSize: 20,
            fontFamily: 'Inter')),
    // actions: [
    // // Navigate to the Search Screen
    // IconButton(
    // onPressed: () => Navigator.of(context)
    //     .push(MaterialPageRoute(builder: (_) => SearchPage())),
    // icon: Icon(Icons.search))
    // ],
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
    bottomOpacity: 0.0,
    elevation: 0.0,
    ),
    body:SingleChildScrollView(
    child: Container(
    padding: EdgeInsets.all(10),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         // Center(
         //      // padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
         //      child:  Text(" Upload Profile Photo", style: TextStyle(
         //          fontWeight: FontWeight.w400,fontFamily: 'Inter',
         //          fontSize: 15, color: Colors.grey
         //
         //      ),
         //      ),
         //
         //    ),


        ],
      ),
      SizedBox(height: 5,),
     // CameraWidget(),
      SizedBox(height: 5,),
      Container(
         //height: 120,
        width:130,
        // margin: EdgeInsets.all(10),
        // padding: EdgeInsets.all(0),
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(150),
        //     border: Border.all(width: 2, color: Colors.black26)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [


            SizedBox(
              height: 120,
              width: 120,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [


                  (imageFile==null)? CircleAvatar(
                    backgroundImage: AssetImage("assets/user-image-default.jpg"),
                  ): Container(

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey,
                ),
                ),
                child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                   //backgroundImage: AssetImage("assets/user-image-default.jpg"),
                    radius: 1,
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(100), // Image radius
                       child:Container(
                         color: Colors.transparent,
                         height: 115,
                         child: Image.file( File(  imageFile!.path),height: 50, width: double.infinity,),
                      ),
                      ),
                    ),
                  ),
                  ),




                  Positioned(
                      right: -10,
                      bottom: 02,
                      //left: -5,
                      child: SizedBox(
                          height: 42,
                          width: 42,

                          child: FlatButton(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Colors.black87),
                            ),
                            color: Colors.black87,
                              onPressed: (){
                                _showChoiceDialog(context);
                              },
                            // TODO: Icon not centered.
                            child:  Icon(Icons.camera_alt_rounded, color: Colors.white,),
                          )))
                ],
              ),
            )


          ],
        ),
      ),

      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(12, 10, 00, 5),
          child: Text(
            "Designation", style: TextStyle(
              fontWeight: FontWeight.w600,fontFamily: 'Inter',
              fontSize: 10, color: Colors.black
          ),
          ),
        ),
      ),

Padding(
    padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
     child:  TextField(
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        controller: _designationController,
        decoration: InputDecoration(
          fillColor: Colors.white, filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(10),

          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(10),
          ),

          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey  )),
          hintText: 'Enter Designation',
          hintStyle: TextStyle( fontFamily: 'Inter',fontSize: 12, color: Color(0xFFC4C4C4), fontWeight: FontWeight.w500),
        ),
      ),
  ),


      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(12, 03, 00, 5),
          child: Text(
            "About", style: TextStyle(
              fontWeight: FontWeight.w600,fontFamily: 'Inter',
              fontSize: 10, color: Colors.black
          ),
          ),
        ),
      ),

      Container(

        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        color: Colors.white,
        child:
        TextField(
          controller: _aboutController,
         // maxLength: 500,
          maxLines: 5,
          decoration: InputDecoration(

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide( color: Color(0xFF6E7983), width: 0.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide( color: Color(0xFF6E7983), width: 0.5),
              ),
              hintText: 'Describe your Profile Summary ',
              hintStyle: TextStyle(fontSize: 12, color: Color(0xFFC4C4C4), fontWeight: FontWeight.w500, fontFamily: "Inter", height: 1.2)
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
      ),
SizedBox(height: 10,),
      Container(
        height: 40,
        width: MediaQuery.of(context).size.width*0.5,
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
            padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(50.0),
            ),

          ),
          onPressed: () {
            profile_update();
          },
          child: const Text('SUBMIT',
            style: TextStyle(
              color:Colors.white,
              fontSize:15,

              fontWeight: FontWeight.bold,
            ),
          ),

        ),
      ),

      ]
    ),
    ),
    ),
    );
  }


  void _openGallery(BuildContext context) async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery ,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context)  async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera ,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }


// ===============================  Click On Submit Button to Save User Profile    ===============================

  profile_update() async{
    String designation = _designationController.text;
    String description = _aboutController.text;
    String base64Image =  base64Encode(File(imageFile!.path).readAsBytesSync());
    String fileName = imageFile!.path.split("/").last;


    //String fileName = imageFile!.path.split('/').last;


    if(designation.isEmpty){
      Fluttertoast.showToast(
          msg: 'Please Enter Designation',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      //print();
    }
    else if(description.isEmpty ){

      Fluttertoast.showToast(
          msg: 'Please Enter Profile Summary',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }
    // else if(fileName==null){
    //   //print('Image path: $fileName');
    //   Fluttertoast.showToast(
    //       msg: 'Please Upload Profile Photo',
    //       toastLength: Toast.LENGTH_LONG,
    //       gravity: ToastGravity.BOTTOM,
    //       timeInSecForIosWeb: 4,
    //       backgroundColor: Colors.red,
    //       textColor: Colors.white,
    //       fontSize: 16.0
    //   );
    // }
    else {
      var json = {
        'tag': 'editprofile',
        'designation':'$designation',
        'description':'$description',
        'image': '$base64Image',
        'name': '$fileName',
        'user_id':'IAT-1'
      };

      print('this is json request : $json');
      Random random = new Random();
      int randomNumber = random.nextInt(100);
      var res = await _services.profile_update(json);
      print('this is response : $res');


      if (res["status"] == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeView()),
        );
        if(res["message"]=='Profile Updated successfully')
        {
          //     print('Profile Update successfully');
          //     Fluttertoast.showToast(
          //     msg: '${res["message"]}',
          //     toastLength: Toast.LENGTH_LONG,
          //     gravity: ToastGravity.BOTTOM,
          //     timeInSecForIosWeb: 4,
          //     backgroundColor: Colors.green,
          //     textColor: Colors.white,
          //     fontSize: 16.0
          // );

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
