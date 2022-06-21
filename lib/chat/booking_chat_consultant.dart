import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../network/services.dart';
import 'chat_consultation_ratings.dart';
//import 'check_chat_recharge.dart';

final Services _services = Services();

class BookingChatConsultant extends StatelessWidget {
  BookingChatConsultant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _titl
      home:Scaffold(

       backgroundColor: Color(0xFFF0F0F0),
    appBar: PreferredSize(
    preferredSize: Size.fromHeight(40.0), // here the desired height
    child:   Padding(
    padding: EdgeInsets.fromLTRB(5, 10, 0, 5),
    child:   AppBar(

          // leading: InkWell(
          //   onTap: () {
          //
          //     Navigator.pop(context);
          //   },
          //
          //   child: Icon(
          //     Icons.arrow_back,
          //     color: Colors.black,
          //     size: 20,
          //   ),
          // ),

          backgroundColor:Color(0xFFF0F0F0),

          elevation: 0,
          centerTitle: true,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  ChatConsultationRating()),
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

                  Text('Back', style:
                  TextStyle(color: Colors.white,fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 15), textAlign: TextAlign.center),


                ],
              ),
            ),
          ),
        ),
        ),
        ),
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: ChatConsultantBookStatefulWidget(),
          ),
        ),

      ),
    );
  }
}
class ChatConsultantBookStatefulWidget extends StatefulWidget {
  const ChatConsultantBookStatefulWidget({Key? key}) : super(key: key);

  @override
  State<ChatConsultantBookStatefulWidget> createState() => _ChatConsultantBookStatefulWidgetState();
}

class _ChatConsultantBookStatefulWidgetState extends State<ChatConsultantBookStatefulWidget> {
  //final TextEditingController _nameController = TextEditingController();
//  final TextEditingController _offerController = TextEditingController();
  // final TextEditingController _finalofferController = TextEditingController();
  TextEditingController descriptionController= TextEditingController();



//Choose Time Periods

  final List<String> periodItems = [

    'ANY TIME',
    'MORNING',
    'NOON',
    "EVENING",
    "NIGHT",
    "MID NIGHT"
  ];
  String? selectedPeriodValues;

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> periodItems) {
    List<DropdownMenuItem<String>> _menuItemsPeriod = [];
    for (var item in periodItems) {
      _menuItemsPeriod.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                item,
                style: const TextStyle(
                    fontSize: 12,fontFamily: 'Inter',
                    fontWeight: FontWeight.w600, height: 0.2
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (item != periodItems.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(height: 0, color: Colors.transparent,),
            ),
        ],
      );
    }
    return _menuItemsPeriod;
  }

  List<int> _getDividersIndexes() {
    List<int> _dividersIndexes = [];
    for (var i = 0; i < (periodItems.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividersIndexes.add(i);
      }
    }
    return _dividersIndexes;
  }




//Choose Time Hours

  final List<String> hourItems = [
    'ANY TIME',
    '05:00AM - 06:00AM',
    '07:00AM - 08:00AM',
    "08:00AM - 09:00AM",
    "09:00AM - 10:00AM"
  ];
  String? selectedHourValues;

  List<DropdownMenuItem<String>> _addHourAfterItems(List<String> hourItems) {
    List<DropdownMenuItem<String>> _menuItemsHour = [];
    for (var itemhour in hourItems) {
      _menuItemsHour.addAll(
        [
          DropdownMenuItem<String>(
            value: itemhour,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                itemhour,
                style: const TextStyle(
                    fontSize: 10,fontFamily: 'Inter',
                    fontWeight: FontWeight.w600, height: 0.2
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (itemhour != hourItems.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(height: 0, color: Colors.transparent,),
            ),
        ],
      );
    }
    return _menuItemsHour;
  }

  List<int> _getHourIndexes() {
    List<int> _dividersHourIndexes = [];
    for (var i = 0; i < (hourItems.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividersHourIndexes.add(i);
      }
    }
    return _dividersHourIndexes;
  }





  // Choose a reason

  String? dropdownValuereason = 'CHOOSE REASON';
  List<String> dropdownItemsreason = <String>[
    'CHOOSE REASON',
    'Meeting You Is A Dream',
    'Direct Consultation',
    'Birthday Celebration ',
    "Invitation For Programme / Event",
    "Anniversary Celebration"
  ];

  // location of meeting

  String? dropdownValuelocation = 'CHOOSE PLACE';
  List<String> dropdownItemslocation = <String>[
    'CHOOSE PLACE',
    'Any place',
    'Your Suggested Place',
    'My Office / My Place',
    "Your Office / Your Place",
    "Hotel / Cafe / Party Hall"
  ];
//  duration

  String? dropdownValueDuration = '1 Hour';
  List<String> dropdownItemsDuration = <String>[
    '1 Hour',
    '3 Hour',
    '4 Hour',
    '5 Hour',
    "6 Hour",
    "7 Hour"
  ];
// check box
  List<String> _list = [];

  bool? _isAgrre = false;
  String dropdownValuemin = 'Month';


  // Custom Switch
  bool isSwitched = false;

  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(children: <Widget>[
        Text('How it works?', style: TextStyle(color: Colors.black, fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 12),),
      Image(
        image: new AssetImage("assets/stepper.PNG"),
        width: double.infinity,
        // height: 30,
        // color: null,
        //fit: BoxFit.scaleDown,
        alignment: Alignment.center,
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 15, 05),
        child: Divider(
          height: 10,
          thickness: 1,
          indent: 20,
          endIndent: 2,
          color: Color(0xFF96ABBE),
          // color: Color(0xFFC4C4C4),
        ),
        ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(25, 10, 25, 05),
          child: Text(
            "Select Date", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
          ),
          ),
        ),
      ),


      Padding(
        padding: const EdgeInsets.fromLTRB(25, 10, 18, 5),
        child:   Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
            height: 40.0,
            width:double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 1),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,

              //shape: BoxShape.circle,
            ),
            child:TextField(
              // readOnly: true,
              controller: dateController,

              decoration: InputDecoration(

                  hintText: 'CHOOSE YOUR PREFERRED DATE',
              hintStyle: TextStyle(fontSize: 10, color: Color(0xFF6E7983)),
              enabledBorder: const OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.white, width: 0.0),
    ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
    borderSide: BorderSide(width: 1,color: Colors.transparent),
    ),
                suffixIcon: Icon(Icons.date_range, color: Colors.black,),
              ),
              onTap: () async {
                var date =  await showDatePicker(
                    context: context,
                    initialDate:DateTime.now(),
                    firstDate:DateTime(1900),
                    lastDate: DateTime(2100));
                dateController.text = date.toString().substring(0,10);
              },
            ),
          ),
          ),



      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(25, 10, 25, 05),
          child: Text(
            "Select Preferred Time", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
          ),
          ),
        ),
      ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              new Flexible(
                child:Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                    child:  Container(
                      height: 38,
                      width : MediaQuery.of(context).size.height*0.5,
                      padding: const EdgeInsets.fromLTRB(8, 0, 2, 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        //shape: BoxShape.circle,
                      ),
                      child:    DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          dropdownElevation: 12,
                          hint: Text(
                            'CHOOSE TIME PERIODS',
                            style: TextStyle(fontSize: 10,
                              color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                          ),
                          items: _addDividersAfterItems(periodItems),
                          customItemsIndexes: _getDividersIndexes(),
                          customItemsHeight: 1,
                          value: selectedPeriodValues,
                          onChanged: (value) {
                            setState(() {
                              selectedPeriodValues = value as String;
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
              ),



              new Flexible(
                child:Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 20, 0),
                    child:  Container(
                      height: 38,
                      width : MediaQuery.of(context).size.height*0.5,
                      padding: const EdgeInsets.fromLTRB(8, 0, 2, 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        //shape: BoxShape.circle,
                      ),
                      child:  DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          dropdownElevation: 12,
                          hint: Text(
                            'CHOOSE TIME HOURS',
                            style: TextStyle(fontSize: 10,
                              color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                          ),
                          items: _addHourAfterItems(hourItems),
                          customItemsIndexes: _getHourIndexes(),
                          customItemsHeight: 1,
                          value: selectedHourValues,
                          onChanged: (value) {
                            setState(() {
                              selectedHourValues = value as String;
                            });
                          },
                          buttonHeight: 40,
                          buttonWidth: 30,
                          itemHeight: 26,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                        ),
                      ),

                    ),
                  ),
                ),
              ),

            ]
        ),



      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(27, 10, 25, 10),
          child: Text(
            "Describe your requirement", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
          ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(23, 0, 20, 10),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  controller: descriptionController,
                  maxLines: 4,
                  decoration: InputDecoration.collapsed(hintText: ""),
                ),
              )
          ),
        ),
      ),
        SizedBox(height: MediaQuery.of(context).size.height*0.15),

Container(
  color: Colors.white,
 child:  Column(
      children: [
        SizedBox(height: 10.0,),
        Text('Book Chat  Consultation', style:TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Inter')),
        SizedBox(height: 10.0,),
        Text('Rs. 20 / min', style:TextStyle(color: Color(0xFF1D18FF), fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Inter')),
        SizedBox(height: 10.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 30.0,),
            new Flexible(
              child: new Text('Duration', style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w400, fontFamily: 'Inter'),

              ),
            ),
            new Flexible(child:  Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 10, 10),
                child:  Container(
                  height: 32.0,
                  width:100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.5, color: Colors.grey,
                    ),
                    ),
                    //borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    //shape: BoxShape.circle,
                  ),
                  child: DropdownButton<String>(
                    value: dropdownValueDuration,
                    icon: Icon(Icons.arrow_drop_down),

                    isExpanded: true,
                    iconSize: 26,
                    elevation: 10,
                    style: const TextStyle(color: Colors.black),
                    underline: Container(
                      height: 2,
                      color: Colors.transparent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValueDuration = newValue;
                      });
                    },
                    items: dropdownItemsDuration.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: TextStyle(fontFamily: 'Inter', fontSize: 10, fontWeight: FontWeight.w700),),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),),


          ],
        ),


        SizedBox(height: 5.0,),



        Align(
          alignment: Alignment.bottomCenter,
          child:  Container(
            //decoration: const BoxDecoration(color: Colors.black),
            margin: EdgeInsets.all(10.0),
            // padding: EdgeInsets.all(12.0),
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(8),
              // color:Colors.white,

            ),
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                primary: Colors.black, // background
                onPrimary: Colors.white, // foreground
                padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {  chatConsultantBooking();

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ChatConsultationRating()),
                // );
              },
              child: const Text('Book for Rs. 2000',
                style: TextStyle(
                  color:Colors.white,
                  fontSize:10,
                    fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),

            ),
          ),

        )

  ]
  ),
),

    ],
    ),


    );

  }
  chatConsultantBooking() async{
    String preffered_date = dateController.text;
    String description = descriptionController.text;
    //String dropdownValue = dropdownItems as String;


    if(preffered_date.isEmpty){
      Fluttertoast.showToast(
          msg: 'Please Enter Date',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

   }

    else if(selectedPeriodValues==null){
      Fluttertoast.showToast(
          msg: 'Please Enter Time Period',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }
    else if(descriptionController.text.isEmpty){
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
    // else if(dropdownValueDuration.isEmpty){
    //   Fluttertoast.showToast(
    //       msg: 'Please Enter Description',
    //       toastLength: Toast.LENGTH_LONG,
    //       gravity: ToastGravity.BOTTOM,
    //       timeInSecForIosWeb: 4,
    //       backgroundColor: Colors.red,
    //       textColor: Colors.white,
    //       fontSize: 16.0
    //   );
    //
    // }



    else {

      var json = {'tag': 'chat_consultant_booking', 'preffered_date': '$preffered_date', 'time_periods':'$selectedPeriodValues'
       ,'time_hours':'$selectedHourValues','description':'$description','duration':'$dropdownValueDuration'

      };
      print('this is json request : $json');

      var res = await _services.chat_consultant_booking(json);
      print('this is response : $res');
      if (res["status"] == 1) {
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatConsultationRating()),
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