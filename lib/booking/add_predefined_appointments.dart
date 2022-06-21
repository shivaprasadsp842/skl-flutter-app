import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../network/services.dart';
import 'all_booking_appointment.dart';
import 'all_predefined_appointments.dart';
import 'edit_book_appointment_price.dart';

final Services _services = Services();

class AddPredefinedViews extends StatelessWidget {
  AddPredefinedViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home:Scaffold(

        backgroundColor:  Color(0xFFF0F0F0),
    appBar: PreferredSize(
    preferredSize: Size.fromHeight(40.0), // here the desired height
    child:  Padding(
    padding: EdgeInsets.fromLTRB(5, 10, 0, 010),
    child: AppBar(
            //   backgroundColor: Color(0xFFEBBF8B),
            backgroundColor:Color(0xFFF0F0F0),
            elevation: 0,
            flexibleSpace: SafeArea(
              child: Container(
                padding: EdgeInsets.only(right: 16),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  AllPredefinedAppointment()),
                        );
                      },

                      child: CircleAvatar(
                        backgroundColor: Color(0xFFE5E5E5),
                        child:     Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),


                    ),

                    Text('Back', style: TextStyle(
                        color: Color(0xFFE5E5E5),fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 15), textAlign: TextAlign.center),


                  ],
                ),
              ),
            ),
            // Icon(Icons.settings,color: Colors.black54,),
          ),
        ),
        ),
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: AddPredefinedCheckStatefulView(),
          ),
        ),

      ),
    );
  }
}
class AddPredefinedCheckStatefulView extends StatefulWidget {
  const AddPredefinedCheckStatefulView({Key? key}) : super(key: key);

  @override
  State<AddPredefinedCheckStatefulView> createState() => _AddPredefinedCheckStatefulViewState();
}

class _AddPredefinedCheckStatefulViewState extends State<AddPredefinedCheckStatefulView > {
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();


//Choose price

  final List<String> priceItems = [
        'RUPEES - (Rs.)',
        '300',
        '400',
        '500',
        "600",
        "700"
  ];
  String? selectedpriceValues;

  List<DropdownMenuItem<String>> _addpriceAfterItems(List<String> priceItems) {
    List<DropdownMenuItem<String>> _menuItemsprice = [];
    for (var itemprice in priceItems) {
      _menuItemsprice.addAll(
        [
          DropdownMenuItem<String>(
            value: itemprice,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                itemprice,
                style: const TextStyle(
                    fontSize: 12,fontFamily: 'Inter',
                    fontWeight: FontWeight.w600, height: 0.2
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (itemprice != priceItems.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(height: 0, color: Colors.transparent,),
            ),
        ],
      );
    }
    return _menuItemsprice;
  }

  List<int> _getpriceIndexes() {
    List<int> _dividerspriceIndexes = [];
    for (var i = 0; i < (priceItems.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividerspriceIndexes.add(i);
      }
    }
    return _dividerspriceIndexes;
  }


  PickedFile? imageFile=null;
  Future<void>_showChoiceDialog(BuildContext context)
  {
    return showDialog(context: context,builder: (BuildContext context){

      return AlertDialog(
        title: Text("Choose option",style: TextStyle(color: Colors.blue),),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Divider(height: 1,color: Colors.blue,),
              ListTile(
                onTap: (){
                  _openGallery(context);
                },
                title: Text("Gallery"),
                leading: Icon(Icons.account_box,color: Colors.blue,),
              ),

              Divider(height: 1,color: Colors.blue,),
              ListTile(
                onTap: (){
                  _openCamera(context);
                },
                title: Text("Camera"),
                leading: Icon(Icons.camera,color: Colors.blue,),
              ),
            ],
          ),
        ),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: IntrinsicHeight(
          child: Container(
          //  padding: const EdgeInsets.fromLTRB(020, 0, 20, 20),
          //  color: Color(0xEEEEEEEE),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 10,),
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      color: Color(0xDDDDDDDD),
                      child: Image(
                        image: new AssetImage("assets/gradient.png"),

                        height: 56,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        // color: null,
                        //fit: BoxFit.scaleDown,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                        child: Text(
                          'Pre-Defined Appointments',
                          style: TextStyle(color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        )),
                  ],
                ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            color: Color(0xFFF0F0F0),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(

                    padding: const EdgeInsets.fromLTRB(10, 10, 00, 5),
                    child: Text(
                      "Title", style: TextStyle(
                        fontWeight: FontWeight.w600,fontFamily: 'Inter',
                        fontSize: 10, color: Colors.black
                    ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(

                    padding: const EdgeInsets.fromLTRB(00, 0, 00, 5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                            controller: titleController,
                            maxLines: 4,
                            decoration: InputDecoration.collapsed(
                                hintText: "PLEASE MENTION TITLE ",
                              hintStyle: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Inter',
                                  fontSize: 10, color: Color(0xFF6E7983))
                            ),
                          ),
                        )
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,

                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                        child:  Text("Add Cover Photo", style: TextStyle(
                            fontWeight: FontWeight.w600,fontFamily: 'Inter',
                            fontSize: 10, color: Colors.black
                        ),),

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, right: 0, top: 8, bottom:0),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFC4C4C4),
                        radius: 14,
                        child:IconButton(
                          icon: new Image.asset('assets/img_34.png'),
                          onPressed: () {
                            _showChoiceDialog(context);
                          },
                        ), //Text
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 5,),
                Container(
                      // height: 150,
                      // width:double.infinity,
                      // margin: EdgeInsets.all(10),
                      // padding: EdgeInsets.all(0),
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     border: Border.all(width: 2, color: Colors.black26)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        imageFile==null?Center(): Image.file( File(  imageFile!.path), height: 150,),

                    Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                        child:(imageFile==null)?
                        Container(
                      //color: Colors.grey,
                      height: 200,
                      width:double.infinity,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.white54)),
                      child:MaterialButton(
                          textColor: Colors.white,
                          color: Color(0xFFE5E5E5),
                          onPressed: (){
                            _showChoiceDialog(context);
                          },
                          child: new Image.asset('assets/img_37.png', width: 90,height: 90,),

                        ),
                        ): Text('')
                    ),
                    ),

                      ],
                    ),
                  ),
                // Container(
                //   //color: Colors.grey,
                //   height: 150,
                //   //width:30,
                //   margin: EdgeInsets.all(10),
                //   padding: EdgeInsets.all(0),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       border: Border.all(width: 2, color: Colors.black26)),
                //   child:FloatingActionButton(backgroundColor: Colors.white38,
                //
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.all(Radius.circular(5.0))
                //     ),
                //
                //     onPressed: () {
                //       // Navigator.push(
                //       //   context,
                //       //   MaterialPageRoute(builder: (context) => BecomeMasterStep1()),
                //       // );
                //     },
                //     // Display the correct icon depending on the state of the player.
                //     // child: Icon(
                //     //   _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                //     // ),
                //     child: Icon(Icons.add,color: Colors.white,size: 50,
                //     ),
                //   ),
                // ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 00, 0),
                    child: Text(
                      "Price", style: TextStyle(
                        fontWeight: FontWeight.w600,fontFamily: 'Inter',
                        fontSize: 10, color: Colors.black
                    ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    new Flexible(child:  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
                        child:  Container(
                          height: 36,
                            width: MediaQuery.of(context).size.width*0.5,
                          padding: const EdgeInsets.fromLTRB(7, 0, 05, 0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12, width: 1),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            //shape: BoxShape.circle,
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              isExpanded: true,
                              dropdownElevation: 12,
                              hint: Text(
                                'RUPEES - (Rs.)',
                                style: TextStyle(fontSize: 10,
                                  color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                              ),
                              items: _addpriceAfterItems(priceItems),
                              customItemsIndexes: _getpriceIndexes(),
                              customItemsHeight: 1,
                              value: selectedpriceValues,
                              onChanged: (value) {
                                setState(() {
                                  selectedpriceValues = value as String;
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
                    ),),
                    new Flexible(child:  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child:  Container(
                          height: 36,
                          width: MediaQuery.of(context).size.width*0.5,
                          padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                          child: TextField(
                            controller: _priceController,
                            decoration: InputDecoration(

                              // borderRadius: BorderRadius.circular(10.0),
                              //fillColor: Colors.white,
                              fillColor: Colors.white, filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: 'MENTION PRICE',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,fontFamily: 'Inter',
                                  fontSize: 10, color: Color(0xFF6E7983)
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),

                  ],
                ),



                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(

                    padding: const EdgeInsets.fromLTRB(0, 10, 00, 10),
                    child: Text(
                      "Special Details", style: TextStyle(
                        fontWeight: FontWeight.w600,fontFamily: 'Inter',
                        fontSize: 10, color: Colors.black
                      //fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child:  Container(

                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(00, 0, 00, 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child:Padding(
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                            controller: descriptionController,
                            maxLines: 4,
                            decoration: InputDecoration.collapsed(hintText: "PLEASE MENTION DETAILS ",
                              hintStyle: TextStyle( fontWeight: FontWeight.w500,fontFamily: 'Inter',
                                  fontSize: 10, color: Color(0xFF6E7983))
                            ),
                          ),
                        )
                    ),
                  ),




          SizedBox(height: 10,),

              Container(
                        // decoration: const BoxDecoration(color: Colors.black),
                        margin: EdgeInsets.all(10.0),
                        // padding: EdgeInsets.all(12.0),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color:Colors.black,

                        ),
                        child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // background
                            onPrimary: Colors.white, // foreground
                            padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {
                           // addPreAppointment();
                            Navigator.push(
                              context,

                            MaterialPageRoute(builder: (context) => AllPredefinedAppointment()),
                            );
                          },
                          child: const Text('CREATE NEW',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,fontFamily: 'Inter',
                                fontSize: 15, color: Colors.white
                            ),
                          ),

                        ),
                      ),




                //SizedBox(height: 20.0,),






              ],
            ),
          ),
              ],
            ),
          ),
        ));
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


  addPreAppointment() async{

    String title = titleController.text;
    String amount = _priceController.text;
    String description = descriptionController.text;

    if(title.isEmpty){
      Fluttertoast.showToast(
          msg: 'Please Enter Title',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }
    else if(amount.isEmpty){
      Fluttertoast.showToast(
          msg: 'Please Enter Price',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }

    else if(selectedpriceValues==null && selectedpriceValues==''){
      Fluttertoast.showToast(
          msg: 'Please Select Price',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }

    else if(imageFile==null){
      Fluttertoast.showToast(
          msg: 'Please Add Cover Photo',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
    else if(description.isEmpty){
      Fluttertoast.showToast(
          msg: 'Please Enter Description',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }


    else {

      var json = {'tag': 'add_predefined_appoinments', 'title': '$title', 'image':'$imageFile'
        ,'description':'$description','amount':'$amount','mop':'Cash'
      };
      print('this is json request : $json');

      var res = await _services.book_appointment(json);
      print('this is response : $res');
      if (res["status"] == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddPredefinedViews()),
        );
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

