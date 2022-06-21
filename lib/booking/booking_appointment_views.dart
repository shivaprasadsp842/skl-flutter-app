import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rolling_switch/rolling_switch.dart';
//import 'package:flutter/painting.dart';

import '../network/services.dart';
import 'all_booking_appointment.dart';
import 'all_predefined_appointments.dart';
//
// import 'package:dropdown_button2/dropdown_bustton2.dart';

final Services _services = Services();


class BookingAppointmentView extends StatelessWidget {
  BookingAppointmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home:Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFF0F0F0),
    appBar: PreferredSize(
    preferredSize: Size.fromHeight(35.0), // here the desired height
    child:  Padding(
    padding: EdgeInsets.all(5),
    child:  AppBar(
            backgroundColor: Colors.transparent,
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
                          MaterialPageRoute(builder: (context) =>  AllBookingAppointment()),
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
            child: Column(
              children: [
                Stack(
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 0),
                      child:   Image(
                        image: new AssetImage("assets/Rectangle 2393.png"),
                        width: double.infinity,
                        height: 220,
                        // color: null,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),


                      Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 195, 0, 0),
                        child:  Container(
                          padding: const EdgeInsets.fromLTRB(0.0, 012, 0, 00),
                          decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(30),
                           topRight: Radius.circular(30),
                         ),
                       ),

                      child:Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),

                        ),
                        child: BookingCheckStatefulView(),
                    ),
                    ),
                    ),
                  ],
                ),


              ],
            )


          ),
        ),

      ),
    );
  }
}
class BookingCheckStatefulView extends StatefulWidget {
  const BookingCheckStatefulView({Key? key}) : super(key: key);

  @override
  State<BookingCheckStatefulView> createState() => _BookingCheckStatefulViewState();
}

class _BookingCheckStatefulViewState extends State<BookingCheckStatefulView> {
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _landmarkController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _googleLinkController = TextEditingController();
  final TextEditingController _timeIdController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController includeController = TextEditingController();
  final TextEditingController excludeController = TextEditingController();


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



//Choose Duration

  final List<String> durationItems = [
    '3 Hour',
    '4 Hour',
    '5 Hour',
    "6 Hour",
    "7 Hour"
  ];
  String? selecteddurationValues;

  List<DropdownMenuItem<String>> _addDurationAfterItems(List<String> hourItems) {
    List<DropdownMenuItem<String>> _menuItemsDuration = [];
    for (var itemduration in durationItems) {
      _menuItemsDuration.addAll(
        [
          DropdownMenuItem<String>(
            value: itemduration,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                itemduration,
                style: const TextStyle(
                    fontSize: 10,fontFamily: 'Inter',
                    fontWeight: FontWeight.w600, height: 0.2
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (itemduration != durationItems.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(height: 0, color: Colors.transparent,),
            ),
        ],
      );
    }
    return _menuItemsDuration;
  }

  List<int> _getDurationIndexes() {
    List<int> _dividersDurationIndexes = [];
    for (var i = 0; i < (durationItems.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividersDurationIndexes.add(i);
      }
    }
    return _dividersDurationIndexes;
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






//Choose city

  final List<String> cityItems = [
    'Mysore',
    'Banglore',
    'Hassan',
    "Mandya",
    "Delhi",
    "Ramanagara"
  ];
  String? selectedcityValues;

  List<DropdownMenuItem<String>> _addcityAfterItems(List<String> cityItems) {
    List<DropdownMenuItem<String>> _menuItemscity = [];
    for (var itemcity in cityItems) {
      _menuItemscity.addAll(
        [
          DropdownMenuItem<String>(
            value: itemcity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                itemcity,
                style: const TextStyle(
                    fontSize: 12,fontFamily: 'Inter',
                    fontWeight: FontWeight.w600, height: 0.2
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (itemcity != cityItems.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(height: 0, color: Colors.transparent,),
            ),
        ],
      );
    }
    return _menuItemscity;
  }

  List<int> _getcityIndexes() {
    List<int> _dividerscityIndexes = [];
    for (var i = 0; i < (cityItems.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividerscityIndexes.add(i);
      }
    }
    return _dividerscityIndexes;
  }



//Choose state

  final List<String> stateItems = [
    'Karnataka',
    'Tamilnadu',
    'Delhi',
    "Kerala",
    "Andhrapradesh"
  ];
  String? selectedstateValues;

  List<DropdownMenuItem<String>> _addstateAfterItems(List<String> stateItems) {
    List<DropdownMenuItem<String>> _menuItemsstate = [];
    for (var itemstate in stateItems) {
      _menuItemsstate.addAll(
        [
          DropdownMenuItem<String>(
            value: itemstate,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                itemstate,
                style: const TextStyle(
                    fontSize: 12,fontFamily: 'Inter',
                    fontWeight: FontWeight.w600, height: 0.2
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (itemstate != stateItems.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(height: 0, color: Colors.transparent,),
            ),
        ],
      );
    }
    return _menuItemsstate;
  }

  List<int> _getstateIndexes() {
    List<int> _dividersstateIndexes = [];
    for (var i = 0; i < (stateItems.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividersstateIndexes.add(i);
      }
    }
    return _dividersstateIndexes;
  }



//Choose Guest Count

  final List<String> guestCountItems = [
    '1',
    '2',
    '3',
    "4",
    "5"
  ];
  String? selectedguestCountValues;

  List<DropdownMenuItem<String>> _addguestCountAfterItems(List<String> guestCountItems) {
    List<DropdownMenuItem<String>> _menuItemsguestCount = [];
    for (var itemguestCount in guestCountItems) {
      _menuItemsguestCount.addAll(
        [
          DropdownMenuItem<String>(
            value: itemguestCount,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                itemguestCount,
                style: const TextStyle(
                    fontSize: 12,fontFamily: 'Inter',
                    fontWeight: FontWeight.w600, height: 0.2
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (itemguestCount != guestCountItems.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(height: 0, color: Colors.transparent,),
            ),
        ],
      );
    }
    return _menuItemsguestCount;
  }

  List<int> _getguestCountIndexes() {
    List<int> _dividersguestCountIndexes = [];
    for (var i = 0; i < (guestCountItems.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividersguestCountIndexes.add(i);
      }
    }
    return _dividersguestCountIndexes;
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







  //guestCountValue

  String? dropdownValueguestCountValue = 'CHOOSE NUMBER OF PEOPLE';
  List<String> dropdownItemsguestCountValue = <String>[
    'CHOOSE NUMBER OF PEOPLE',
    '100',
    '200',
    '500',
    "1000",
    "7000"
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
        child: IntrinsicHeight(
        child: Container(
  color: Colors.white,
  child:Column(
     // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[


        Text(
          "Invite As A Speaker / Trainer ", style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontFamily: 'Inter',
        ), textAlign: TextAlign.center,
        ),

        Container(
          height: 120.0,
          width: double.infinity,

          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
         // constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
          //padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Color(0xFFE5E5E5),
              borderRadius: BorderRadius.circular(2)
          ),
          child: Text(
            "", style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          ),
        ),

    Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    //borderRadius: BorderRadius.circular(0),
    color: Color(0xFFF0F0F0),

    // boxShadow: [BoxShadow(
    //   color: Colors.grey,
    //   blurRadius: 10.0,
    // ),]
    ),

    padding: const EdgeInsets.fromLTRB(14, 20, 14, 20),
    //color: Colors.red,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[

      Align(
        alignment: Alignment.centerLeft,
        child: Container(
               padding: const EdgeInsets.fromLTRB(00, 10, 00, 00),
          child: Text(
            "Select Date", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter', height: 1,
          ),
          ),
        ),
      ),
      // Container(
      // width: 200.0,
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
              child:TextField(
              // readOnly: true,
              controller: dateController,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.date_range_outlined, size: 20, color: Colors.black,),
                  hintText: 'CHOOSE YOUR PREFERRED DATE',
                hintStyle: TextStyle(fontSize: 10, fontFamily: 'Inter', fontWeight: FontWeight.w500, color:Color(0xFF6E7983),),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: const BorderSide(color: Colors.white, width: 0.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(width: 1,color: Colors.transparent),
                ),
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
               padding: const EdgeInsets.fromLTRB(00, 10, 00, 00),
          child: Text(
            "Select Preferred Time", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w600,
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
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
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
                  padding: const EdgeInsets.fromLTRB(10, 5, 2, 0),
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
               padding: const EdgeInsets.fromLTRB(00, 10, 00, 00),
          child: Text(
            "Duration Of Appointment", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter', height: 1,
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
              padding: const EdgeInsets.fromLTRB(00, 10, 0, 10),
              child:  Container(
                height: 38.0,
                width : MediaQuery.of(context).size.height*0.5,
                padding: const EdgeInsets.fromLTRB(8, 0, 03, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //shape: BoxShape.circle,
                ),
                child:   DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    dropdownElevation: 12,
                    hint: Text(
                      'CHOOSE DURATION',
                      style: TextStyle(fontSize: 10,
                        color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                    ),
                    items: _addDividersAfterItems(durationItems),
                    customItemsIndexes: _getDurationIndexes(),
                    customItemsHeight: 1,
                    value: selecteddurationValues,
                    onChanged: (value) {
                      setState(() {
                        selecteddurationValues = value as String;
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
          new Flexible(child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
              child:  Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                height: 36.0,
                width : MediaQuery.of(context).size.height*0.5,
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: TextField(
                controller: _priceController,
                decoration: InputDecoration(
                  fillColor: Colors.white, filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white)

                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Rs. 2000 / Hour',
                  hintStyle: TextStyle(
                    color: Color(0xFFADB4BB), // <-- Change this
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
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
          padding: const EdgeInsets.fromLTRB(00, 5, 00, 05),
          child: Text(
            "Location Of Meeting", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter', height: 1,
          ),
          ),
        ),
      ),

      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          child:  Container(
            height: 38.0,
            width:double.infinity,
            padding: const EdgeInsets.fromLTRB(8, 0, 08, 0),
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
                  style: TextStyle(fontSize: 12,
                    color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                ),
                items: _addLocationAfterItems(locationItems),
                customItemsIndexes: _getLocationIndexes(),
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


      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          new Flexible(child:  Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(00, 0, 0, 0),
              child:  Container(
                height: 34.0,
                width:double.infinity,
                padding: const EdgeInsets.fromLTRB(00, 03, 0, 3),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,

                  //shape: BoxShape.circle,
                ),
                child: TextField(
                  controller: _landmarkController,
                  decoration: InputDecoration(

                    // borderRadius: BorderRadius.circular(10.0),
                    //fillColor: Colors.white,
                    fillColor: Colors.white, filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.white)

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'LANDMARK',
                    hintStyle: TextStyle(
                      color: Color(0xFFADB4BB),
                      fontSize:  10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ),
          new Flexible(child:  Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
              child:  Container(
                height: 34.0,
                width:double.infinity,
                padding: const EdgeInsets.fromLTRB(00, 3, 0, 3),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,

                  //shape: BoxShape.circle,
                ),
                child: TextField(
                  controller: _pincodeController,
                  decoration: InputDecoration(

                    // borderRadius: BorderRadius.circular(10.0),
                    //fillColor: Colors.white,
                    fillColor: Colors.white, filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.white)

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'PINCODE',
                    hintStyle: TextStyle(
                      color: Color(0xFFADB4BB), // <-- Change this
                      fontSize:  10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ),

        ],
      ),

      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //SizedBox(width: 10.0,),
            new Flexible(
              child:Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 00, 0),
                  child:  Container(
                    height: 38.0,
                    width:double.infinity,
                    padding: const EdgeInsets.fromLTRB(3, 0, 03, 0),
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
                          'CHOOSE CITY',
                          style: TextStyle(fontSize: 10,
                            color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                        ),
                        items: _addcityAfterItems(cityItems),
                        customItemsIndexes: _getcityIndexes(),
                        customItemsHeight: 1,
                        value: selectedcityValues,
                        onChanged: (value) {
                          setState(() {
                            selectedcityValues = value as String;
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
                  padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                  child:  Container(
                    height: 38.0,
                    width:double.infinity,
                    padding: const EdgeInsets.fromLTRB(03, 00, 3, 0),
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
                          'CHOOSE STATE',
                          style: TextStyle(fontSize: 10,
                            color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                        ),
                        items: _addstateAfterItems(stateItems),
                        customItemsIndexes: _getstateIndexes(),
                        customItemsHeight: 1,
                        value: selectedstateValues,
                        onChanged: (value) {
                          setState(() {
                            selectedstateValues = value as String;
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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 10, 0, 10),
          child:  Container(
            height: 35.0,

            child: TextField(
              controller: _googleLinkController,
              decoration: InputDecoration(

                fillColor: Colors.white, filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(13.0)),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(13.0)),
                    borderSide: BorderSide(color: Colors.white)),
                hintText: 'Mention Google Link Of The Venue',
                hintStyle: TextStyle(
                  color: Color(0xFFADB4BB), // <-- Change this
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ),
      ),


      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 5, 00, 05),
          child:  Container(
           // color: Colors.white,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(

                    padding: const EdgeInsets.fromLTRB(15, 10, 45, 10),
                    child: Text(
                      "Bringing Anyone With You ?", style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6E7983),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter', height: 1,
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

                        child:   RollingSwitch.icon(
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
                            backgroundColor: Colors.grey,
                            iconColor: Colors.transparent,
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
          ),
        ),
      ),

      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 10, 0, 10),
          child:  Container(
            height: 36.0,

            child: TextField(
              controller: _timeIdController,
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
                hintText: 'Please mention their TIME ID',
                hintStyle: TextStyle(
                  color: Colors.grey, // <-- Change this
                  fontSize:  10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ),
      ),


      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(00, 5, 00, 05),
          child: Text(
            "Guest Count", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter', height: 1,
          ),
          ),
        ),
      ),

      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 5, 00, 0),
          child:  Container(
            height: 36.0,
            width:double.infinity,
            padding: const EdgeInsets.fromLTRB(5, 0, 05, 0),
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
                  'CHOOSE NUMBER OF PEOPLE',
                  style: TextStyle(fontSize: 12,
                    color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                ),
                items: _addguestCountAfterItems(guestCountItems),
                customItemsIndexes: _getguestCountIndexes(),
                customItemsHeight: 1,
                value: selectedguestCountValues,
                onChanged: (value) {
                  setState(() {
                    selectedguestCountValues = value as String;
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

          padding: const EdgeInsets.fromLTRB(0, 10, 00, 5),
          child: Text(
            "Describe your requirement", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter', height: 1,
          ),
          ),
        ),
      ),
    Align(
    alignment: Alignment.centerLeft,
    child: Container(

    padding: const EdgeInsets.fromLTRB(0, 0, 00, 5),
    child: Container(

          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(00, 0, 00, 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: descriptionController,
                  maxLines: 5,
                  decoration: InputDecoration.collapsed(hintText: "Creator will agree to meet you only if you write clearly about the purpose of meeting.                                                             SO PLEASE BE CLEAR & SPECIFIC",
                  hintStyle: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Inter', fontSize: 13, height: 1.3, color: Color(0xFFC4C4C4))),
                ),
              )
          ),
        ),
        ),


      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(0, 5, 00, 5),

          child: Text(
            "Includes", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter', height: 1,
          ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(0, 0, 00, 5),
          child:Container(

          padding: const EdgeInsets.fromLTRB(00, 0, 00, 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  controller: includeController,
                  maxLines: 3,
                  decoration: InputDecoration.collapsed(hintText: ""),
                ),
              )
          ),
        ),
      ),



      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(0, 0, 00, 5),
          child: Text(
            "Excludes", style: TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter', height: 1,
          ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(00, 0, 00, 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  controller: excludeController,
                  maxLines: 3,
                  decoration: InputDecoration.collapsed(hintText: ""),
                ),
              )
          ),
        ),




      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 0, 00, 10),
          child:  Container(
            // color: Colors.white,

            child: Row(
              children: [
                Checkbox(
                  side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(width: 1.0, color: Colors.blue),
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

                    padding: const EdgeInsets.fromLTRB(0, 10, 00, 10),
                    child: Text(
                      "Agereed to TERMS & CONDITIONS", style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFF2363DE),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter', height: 1,
                    ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[

          new Flexible(child:  Align(
            alignment: Alignment.bottomCenter,
            child:  Container(
              width: double.infinity,
              // decoration: const BoxDecoration(color: Colors.black),
          //    margin: EdgeInsets.all(10.0),
              // padding: EdgeInsets.all(12.0),
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(8),
                color:Colors.black,

              ),
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // background
                  onPrimary: Colors.white, // foreground
                  padding: const EdgeInsets.fromLTRB(70, 15, 70, 15),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  //book_appointment();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllPredefinedAppointment()),
                  );
                },
                child: const Text('BOOK NOW',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize:15,

                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),

              ),
            ),

          ),
          ),
        ],
      ),


      //SizedBox(height: 20.0,),






        ],
        ),
        ),
        ])),
        ));
  }



  book_appointment() async{

    String preffered_date = dateController.text;
    String description = descriptionController.text;



    if(preffered_date.isEmpty){
      Fluttertoast.showToast(
          msg: 'Choose Preffered Date',
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

    else if(selectedHourValues==null){
      Fluttertoast.showToast(
          msg: 'Please Select Time Hours',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }


    else if(selecteddurationValues==null){
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


    else if(_priceController.text.isEmpty){
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


    else if(_landmarkController.text.isEmpty){
      Fluttertoast.showToast(
          msg: 'Please Enter Landmark',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }


    else if(dropdownValuelocation==null){
      Fluttertoast.showToast(
          msg: 'Please Select Place',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }


    else if(selectedcityValues==null){
      Fluttertoast.showToast(
          msg: 'Please Select City',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }


    else if(selectedstateValues==null){
      Fluttertoast.showToast(
          msg: 'Please Select State',
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

    else if(dropdownValuereason==null){
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
    else if(dropdownValuelocation==null){
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
    else if(selecteddurationValues==null){
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
   // else if(_googleLinkController.text.isEmpty){
   //    Fluttertoast.showToast(
   //        msg: 'Please Select Duration',
   //        toastLength: Toast.LENGTH_LONG,
   //        gravity: ToastGravity.BOTTOM,
   //        timeInSecForIosWeb: 4,
   //        backgroundColor: Colors.red,
   //        textColor: Colors.white,
   //        fontSize: 16.0
   //    );
   //
   //  }
    else if(_timeIdController.text.isEmpty){
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

      var json = {'tag': 'events_appointment', 'pDate': '$preffered_date',
        'timePeriod':'$selectedPeriodValues',
        'time_hours':'$selectedHourValues',
        'booking_amt':'$_priceController',
        'place':'$_landmarkController',
        'city':'$selectedcityValues',
        'state':'$selectedstateValues',
        'pincode':'$_pincodeController',
        'landmark':'$_landmarkController',
        'link':'$_googleLinkController',
        'people':'$dropdownValueguestCountValue',
        'timeID':'$_timeIdController',
        'link':'$_googleLinkController',
        'description':'$description',
        'include':'$includeController',
        'exclude':'$excludeController',
        'description':'$description',
        'duration':'$selecteddurationValues',
        'appointment_reason':'$dropdownValuereason'
        , 'place': '$dropdownValuelocation',
        'is_anyone_with_you': '$isSwitched',
        'isAnyone': '$isSwitched',
        'agree': '$_isAgrre'

      };
      print('this is json request : $json');

      var res = await _services.book_appointment(json);
      print('this is response : $res');
      if (res["status"] == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AllPredefinedAppointment()),
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