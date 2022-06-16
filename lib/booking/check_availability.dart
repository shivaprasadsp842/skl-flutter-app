import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rolling_switch/rolling_switch.dart';

import '../network/services.dart';
import 'all_booking_appointment.dart';
import 'all_predefined_appointments.dart';
import 'direct_book_appointment.dart';
import 'package:http/http.dart' as http;
import 'package:dropdown_button2/dropdown_button2.dart';

final Services _services = Services();

class CheckAvailability extends StatelessWidget {
  CheckAvailability({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home:Scaffold(
        backgroundColor: Color(0xFFF0F0F0),
    appBar: PreferredSize(
    preferredSize: Size.fromHeight(25.0), // here the desired height
    child:  AppBar(
          backgroundColor: Color(0xFFF0F0F0),
          elevation: 0,

          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  DirectBookAppointment()),
              );
            },

            child: CircleAvatar(
              backgroundColor: Color(0xFFE5E5E5),
              child:     Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 18,
              ),
            ),


          ),
       //  title: Text('Back'),
         centerTitle: false,
        ),
        ),
        body: SingleChildScrollView(
    child: IntrinsicHeight(
          child: CheckStatefulWidget(),
        ),
        ),
        // home: Scaffold(
        //   appBar: AppBar(title: const Text(_title)),
        //   body: const Center(
        //     child: MyStatefulWidget(),
        //   ),
        // ),
      ),
    );
  }
}
class CheckStatefulWidget extends StatefulWidget {
  const CheckStatefulWidget({Key? key}) : super(key: key);

  @override
  State<CheckStatefulWidget> createState() => _CheckStatefulWidgetState();
}

class _CheckStatefulWidgetState extends State<CheckStatefulWidget> {
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





//Choose Reason

  final List<String> reasonItems = [

    'Meeting You Is A Dream',
    'Direct Consultation',
    'Birthday Celebration ',
    "Invitation For Programme / Event",
    "Anniversary Celebration",
    "Marriage Celebration",
    "Collaboration For New Project",
    "Encourgement/Motivation",
    "Other"
  ];
  String? selectedReasonValues;

  List<DropdownMenuItem<String>> _addReasonAfterItems(List<String> reasonItems) {
    List<DropdownMenuItem<String>> _menuItemsReason = [];
    for (var itemreason in reasonItems) {
      _menuItemsReason.addAll(
        [
          DropdownMenuItem<String>(
            value: itemreason,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                itemreason,
                style: const TextStyle(
                    fontSize: 12,fontFamily: 'Inter',
                    fontWeight: FontWeight.w600, height: 0.2
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (itemreason != reasonItems.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(height: 0, color: Colors.transparent,),
            ),
        ],
      );
    }
    return _menuItemsReason;
  }

  List<int> _getReasonIndexes() {
    List<int> _dividersReasonIndexes = [];
    for (var i = 0; i < (reasonItems.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividersReasonIndexes.add(i);
      }
    }
    return _dividersReasonIndexes;
  }



//Choose location

  final List<String> locationItems = [
    'Any place',
    'Your Suggested Place',
    'My Office / My Place',
    "Your Office / Your Place",
    "Hotel / Cafe / Party Hall"
  ];
  String? selectedLocationValues;

  List<DropdownMenuItem<String>> _addLocationAfterItems(List<String> locationItems) {
    List<DropdownMenuItem<String>> _menuItemsLocation = [];
    for (var itemlocation in locationItems) {
      _menuItemsLocation.addAll(
        [
          DropdownMenuItem<String>(
            value: itemlocation,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                itemlocation,
                style: const TextStyle(
                    fontSize: 12,fontFamily: 'Inter',
                    fontWeight: FontWeight.w600, height: 0.2
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (itemlocation != locationItems.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(height: 0, color: Colors.transparent,),
            ),
        ],
      );
    }
    return _menuItemsLocation;
  }

  List<int> _getLocationIndexes() {
    List<int> _dividersLocationIndexes = [];
    for (var i = 0; i < (locationItems.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividersLocationIndexes.add(i);
      }
    }
    return _dividersLocationIndexes;
  }






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
  // String url = "http://192.168.0.19/inalltime_api/user/platform.php";
  //  late String timeperiod;
  // List data= List();
  // Future getTimeperiod() async{
  //    var respoonse =await http.get(url, headers:{"Accept":"applocation/json"});
  //    var jsonBody=respoonse.body;
  //    var jsonData =json.decode(jsonBody);
  //    setState(() {
  //      data =jsonData;
  //
  //    });
  //    print(jsonData);
  // return "success";
  // }
  // @override
  // void initState()
  // {
  //   super.initState();
  //   getTimeperiod();
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text('How it Works?', style: TextStyle(color: Colors.black,fontFamily: 'Inter', fontWeight: FontWeight.w700, fontSize: 12), textAlign: TextAlign.center),
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
          padding: const EdgeInsets.fromLTRB(25, 10, 25, 00),
          child: Text(
            "Select Date", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter', height: 1,
          ),
          ),
        ),
      ),
      // Container(
      // width: 200.0,


          Padding(
    padding: const EdgeInsets.fromLTRB(18, 5, 18, 5),
    child:   Container(
    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
    height: 40.0,
    width:double.infinity,
    decoration: BoxDecoration(
    border: Border.all(color: Colors.black12, width: 1),
    borderRadius: BorderRadius.circular(12),
    color: Colors.white,

    //shape: BoxShape.circle,
    ),
    child: TextField(
     // readOnly: true,
      controller: dateController,
    decoration: InputDecoration(
    hintText: 'CHOOSE YOUR PREFERRED DATE',
      hintStyle: TextStyle(fontSize: 10, fontFamily: 'Inter', fontWeight: FontWeight.w500, color:Color(0xFF6E7983),),
      enabledBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 0.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1,color: Colors.transparent),
      ),
      suffixIcon: Icon(Icons.date_range_outlined, color: Colors.black,),
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
          padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
          child: Text(
            "Select Preferred Time", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter', height: 1,
          ),
          ),
        ),
      ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      SizedBox(width: 0.0,),
      new Flexible(
        child:Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 5, 5, 0),
            child:  Container(
               height: 36,
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
            padding: const EdgeInsets.fromLTRB(10, 5, 18, 0),
            child:  Container(
              height: 36,
              width : MediaQuery.of(context).size.height*0.5,
              padding: const EdgeInsets.fromLTRB(8, 0, 05, 0),
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
                  itemHeight: 28,
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
          padding: const EdgeInsets.fromLTRB(25, 13, 45, 0),
          child: Text(
            "This Appointment Is For", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter', height: 1,
          ),
          ),
        ),
      ),

      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(17, 5, 17, 10),
          child:  Container(
            height: 36.0,
            width:double.infinity,
            padding: const EdgeInsets.fromLTRB(8, 0, 05, 0),
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
                  'CHOOSE REASON',
                  style: TextStyle(fontSize: 10,
                    color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                ),
                items: _addReasonAfterItems(reasonItems),
                customItemsIndexes: _getReasonIndexes(),
                customItemsHeight: 1,
                value: selectedReasonValues,
                onChanged: (value) {
                  setState(() {
                    selectedReasonValues = value as String;
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
          padding: const EdgeInsets.fromLTRB(25, 5, 45, 0),
          child: Text(
            "Location Of Meeting", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter', height: 1,
          ),
          ),
        ),
      ),

      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 5, 18, 0),
          child:  Container(
            height: 36.0,
            width:double.infinity,
            padding: const EdgeInsets.fromLTRB(8, 0, 05, 0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 1),
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              //shape: BoxShape.circle,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                dropdownElevation: 12,
                hint: Text(
                  'CHOOSE PLACE',
                  style: TextStyle(fontSize: 10,
                    color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                ),
                items: _addReasonAfterItems(locationItems),
                customItemsIndexes: _getReasonIndexes(),
                customItemsHeight: 1,
                value: selectedLocationValues,
                onChanged: (value) {
                  setState(() {
                    selectedLocationValues = value as String;
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
          child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 5, 18, 5),
    child:  Container(
       // color: Colors.white,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 1),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        //shape: BoxShape.circle,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(

              padding: const EdgeInsets.fromLTRB(15, 9, 45, 9),
              child: Text(
                "Bringing Anyone With You ?", style: TextStyle(
                fontSize: 12,
                color: Color(0xFF6E7983),
                //fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
      Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),

      child: SizedBox(
        width: 45,
        height: 20,
        child: FittedBox(
            fit: BoxFit.fill,
            child:    RollingSwitch.icon(
              onChanged: (bool state) {
                print('turned ${(state) ? 'true' : 'false'}');
              },
              rollingInfoRight: const RollingIconInfo(
                icon: Icons.check,
                backgroundColor: Color(0xFF1BDA23),
                iconColor: Colors.transparent,
                text: Text('  YES' , style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter', height: 1,
                ),
                ),
              ),
              rollingInfoLeft: const RollingIconInfo(
                icon: Icons.check,
                iconColor: Colors.transparent,
                backgroundColor: Colors.grey,
                text: Text('NO', style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter', height: 1,
                ),),
              ),
            )
          ),
          ),
          ),


        ],
      ),
      ),
      ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(25, 10, 45, 5),
          child: Text(
            "Describe your requirement", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter', height: 1,
          ),
          ),
        ),
      ),
      Align(
          alignment: Alignment.centerLeft,
          child: Container(

          padding: const EdgeInsets.fromLTRB(18, 0, 18, 1),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              controller: descriptionController,
              maxLines: 3,
              decoration: InputDecoration.collapsed(hintText: ""),
            ),
          )
      ),
      ),
      ),


      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child:  Container(
           // color: Colors.white,

            child: Row(
              children: [
    Checkbox(

      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color:Color(0xFF2363DE),),
      ),
    value: _isAgrre,
    onChanged: (value) {
    setState(() {
      _isAgrre = value;
    String selectVal = "Agree";
    value! ? _list.add(selectVal) : _list.remove(selectVal);
    }
    );},
    ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(

                    padding: const EdgeInsets.fromLTRB(0, 5, 45, 0),
                    child: Text(
                      "Agreed to TERMS & CONDITIONS", style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFF2363DE),
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),


      Stack(
      children: <Widget>[
        Container(
        alignment: Alignment.center,
        child: Image(
          image: new AssetImage("assets/Group 95 (1).png"),
          // width: 30,
          height: 50,
          width: double.infinity,
          fit: BoxFit.cover,
          // color: null,
          //fit: BoxFit.scaleDown,
          alignment: Alignment.center,
        ),
      ),

        // Container(child: ConstrainedBox(
        //     constraints: BoxConstraints.expand(),
        //     child: IconButton(
        //       icon: Image.asset('path/gradient.png'),
        //       iconSize: 50,
        //       onPressed: () {},
        //     ))),

    new GestureDetector(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AllPredefinedAppointment()),
      );
    },
    child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
          child: Text(
            '',
            style: TextStyle(color: Colors.white54,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
          )
    ),
    ),
    ],
    ),

      Container(
          color: Colors.white,
          child:  Column(
          children: [
      SizedBox(height: 10.0,),
      Text('BOOK A DIRECT APPOINTMENT', style:TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w900, fontFamily: 'Inter')),
      SizedBox(height: 10.0,),
      Text('Rs. 2000 / Hour', style:TextStyle(color: Color(0xFF1D18FF), fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Inter')),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 70.0,),
          new Flexible(
            child: Container(
              height: 28.0,
             // width:70,
              child: new Text('Duration', style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w500, fontFamily: 'Inter'),

            ),
          ),
          ),
new Flexible(child:  Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
    child:  Container(
      height: 40.0,
       width:70,
      padding: const EdgeInsets.fromLTRB(5, 00, 0, 05),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.transparent,
          ),
        ),
        //borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        //shape: BoxShape.circle,
      ),
      child: DropdownButton<String>(
        value: dropdownValueDuration,
        icon: Icon(Icons.arrow_drop_down, size: 25, color: Colors.black,),

        isExpanded: true,
        iconSize: 26,
        elevation: 12,
        style: const TextStyle(color: Colors.grey, fontSize: 10),
        underline: Container(
          height: 1,
          color: Color(0xFF798B9B),
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValueDuration = newValue;
          });
        },
        items: dropdownItemsDuration.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value, style: TextStyle(fontFamily: 'Inter', fontSize: 10, fontWeight: FontWeight.w700, color: Colors.black, height: 1),),
          );
        }).toList(),
      ),
    ),
  ),
),),


        ],
      ),

ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black, // background
              onPrimary: Colors.white, // foreground
              padding: const EdgeInsets.fromLTRB(43, 17, 43, 17),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15.0),
              ),
            ),
            onPressed: () {
             // book_appointment();
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllBookingAppointment()),
              );
            },
            child: const Text('Book for Rs. 2000',
              style: TextStyle(
                color:Colors.white,
                fontSize:10,
                  fontFamily: "Inter",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),





            SizedBox(height: 10,)
      ]
    ),
    ),
    ],
    );

  }


  book_appointment() async{
    String preffered_date = dateController.text;
    String description = descriptionController.text;



    if(preffered_date.isEmpty){
      Fluttertoast.showToast(
          msg: 'Please Select Date',
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
          msg: 'Please Select Time Period',
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
    else if(selectedReasonValues==null){
      Fluttertoast.showToast(
          msg: 'Please Select Appointment Reason',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }
    else if(selectedLocationValues==null){
      Fluttertoast.showToast(
          msg: 'Please Select Location of Meeting',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }
    else if(dropdownValueDuration==null){
      Fluttertoast.showToast(
          msg: 'Please Select Duration',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }


    else {

      var json = {'tag': 'book_appointment', 'preffered_date': '$preffered_date', 'time_periods':'$selectedPeriodValues'
        ,'time_hours':'$selectedHourValues','description':'$description','duration':'$dropdownValueDuration', 'appointment_reason':'$selectedReasonValues'
        , 'place': '$selectedLocationValues', 'is_anyone_with_you': '$isSwitched', 'agree': '$_isAgrre'

      };
      print('this is json request : $json');

      var res = await _services.book_appointment(json);
      print('this is response : $res');
      if (res["status"] == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AllBookingAppointment()),
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