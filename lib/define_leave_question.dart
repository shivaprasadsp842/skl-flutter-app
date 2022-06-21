

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:furniture_ui/view/homescreen.dart';
import 'package:furniture_ui/view/master.dart';
import 'package:rolling_switch/rolling_switch.dart';

import 'edit_question.dart';


class DefineLeaveQuestion extends StatefulWidget {
  const DefineLeaveQuestion({Key? key}) : super(key: key);

  @override
  State<DefineLeaveQuestion> createState() => _DefineLeaveQuestionState();
}

class _DefineLeaveQuestionState extends State<DefineLeaveQuestion> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _offerController = TextEditingController();
  final TextEditingController _finalofferController = TextEditingController();
// currency

//Choose currency

  final List<String> currencyItems = [
    'RUPEES - (Rs.)',
    'Dollar',
    'etc',
    'Blue',
    "Pink",
    "Orange"
  ];
  String? selectedcurrencyValues;

  List<DropdownMenuItem<String>> _addcurrencyAfterItems(List<String> currencyItems) {
    List<DropdownMenuItem<String>> _menuItemscurrency = [];
    for (var itemcurrency in currencyItems) {
      _menuItemscurrency.addAll(
        [
          DropdownMenuItem<String>(
            value: itemcurrency,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                itemcurrency,
                style: const TextStyle(
                    fontSize: 12,fontFamily: 'Inter',
                    fontWeight: FontWeight.w600, height: 0.2
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (itemcurrency != currencyItems.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(height: 0, color: Colors.transparent,),
            ),
        ],
      );
    }
    return _menuItemscurrency;
  }

  List<int> _getcurrencyIndexes() {
    List<int> _dividerscurrencyIndexes = [];
    for (var i = 0; i < (currencyItems.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividerscurrencyIndexes.add(i);
      }
    }
    return _dividerscurrencyIndexes;
  }



//Choose time

  final List<String> timeItems = [
    'MINUTE',
    'HOUR',
    'DAY',
    "WEEK",
    "MONTH"
  ];
  String? selectedtimeValues;

  List<DropdownMenuItem<String>> _addtimeAfterItems(List<String> timeItems) {
    List<DropdownMenuItem<String>> _menuItemstime = [];
    for (var itemtime in timeItems) {
      _menuItemstime.addAll(
        [
          DropdownMenuItem<String>(
            value: itemtime,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                itemtime,
                style: const TextStyle(
                    fontSize: 12,fontFamily: 'Inter',
                    fontWeight: FontWeight.w600, height: 0.2
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (itemtime != timeItems.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(height: 0, color: Colors.transparent,),
            ),
        ],
      );
    }
    return _menuItemstime;
  }

  List<int> _gettimeIndexes() {
    List<int> _dividerstimeIndexes = [];
    for (var i = 0; i < (timeItems.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _dividerstimeIndexes.add(i);
      }
    }
    return _dividerstimeIndexes;
  }





   // Custom Switch
   bool isSwitched = false;

   //Start Date picker
  DateTime startDate = DateTime.now();
  // startDateController

  final startDateController = TextEditingController();
  final endDateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    startDateController.dispose();
    endDateController.dispose();
    super.dispose();
  }

  Future<void> _startDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: startDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != startDate) {
      setState(() {
        startDate = picked;
      });
    }
  }//
  //End Date picker
  DateTime endDate = DateTime.now();

  Future<void> _endDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: endDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != endDate) {
      setState(() {
        endDate = picked;
      });
    }
  }


   @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF0F0F0),
     appBar: PreferredSize(
     preferredSize: Size.fromHeight(35.0), // here the desired height
     child: Padding(
     padding: EdgeInsets.fromLTRB(5,15,0,5),
     child: AppBar(
     leading: InkWell(
     onTap: () {
     Navigator.push(
     context,
     MaterialPageRoute(builder: (context) =>  EditLeaveQuestion()),
     );
     },

     child: Icon(
     Icons.arrow_back,
     color: Colors.transparent,
       size: 20,
     ),
     ),
       flexibleSpace: SafeArea(
         child: Container(
           padding: EdgeInsets.only(right: 16),
           child: Row(
             children: <Widget>[
               InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) =>  EditLeaveQuestion()),
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
       iconTheme: IconThemeData(color: Colors.black),
       centerTitle: true,
       backgroundColor: Color(0xFFF0F0F0),
       bottomOpacity: 0.0,
       elevation: 0.0,
     ),
     ),
     ),

     body:  SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child:  Column(children: <Widget>[
        SizedBox(height: 20,),

        Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image(
                image: new AssetImage("assets/gradient.png"),
                // width: 30,
                height: 56,
                width: double.infinity,
                fit: BoxFit.cover,
                // color: null,
                //fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
            ),

            new GestureDetector(
              onTap: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AllPredefinedAppointment()),
                // );
              },
              child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                  child: Text(
                    'Define Your Leave A Question',
                    style: TextStyle(color: Color(0xFFC4C4C4),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  )
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(18, 0, 45, 05),
          child: Text(
            "Currency", style: TextStyle(
              fontWeight: FontWeight.w600,fontFamily: 'Inter',
              fontSize: 10, color: Colors.black
          ),
          ),
        ),
      ),
      // Container(
      // width: 200.0,


        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 45, 0),
            child:  Container(
              height: 36.0,
              width: MediaQuery.of(context).size.width * 0.45,
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 1),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                //shape: BoxShape.circle,
              ),
              child:DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  dropdownElevation: 12,
                  hint: Text(
                    'RUPEES - (Rs.)',
                    style: TextStyle(fontSize: 12,
                      color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                  ),
                  items: _addcurrencyAfterItems(currencyItems),
                  customItemsIndexes: _getcurrencyIndexes(),
                  customItemsHeight: 1,
                  value: selectedcurrencyValues,
                  onChanged: (value) {
                    setState(() {
                      selectedcurrencyValues = value as String;
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
          padding: const EdgeInsets.fromLTRB(18, 10, 45, 05),
          child: Text(
            "General Price", style: TextStyle(
              fontWeight: FontWeight.w600,fontFamily: 'Inter',
              fontSize: 10, color: Colors.black
          ),
          ),
        ),
      ),


      Row(
       // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 8.0,),
          new Flexible(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 5, 05),
              height: 43.0,
              width: MediaQuery.of(context).size.width * 0.5,
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color:Color(0xFFFFFFFF), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  // borderRadius: BorderRadius.circular(10.0),
                  //fillColor: Colors.white,
                  fillColor: Colors.white, filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white),

                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'MENTION PRICE (50)',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,fontFamily: 'Inter',
                      fontSize: 10, color: Color(0xFF6E7983)
                  ),
                ),
              ),
            ),
          ),

          new Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 00, 0),
              child:  Container(
                height: 38.0,
                width: MediaQuery.of(context).size.width * 0.5,
                padding: const EdgeInsets.fromLTRB(10, 0, 00, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //shape: BoxShape.circle,
                ),

                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    dropdownElevation: 12,
                    hint: Text(
                      'MONTH',
                      style: TextStyle(fontSize: 12,
                        color: Color(0xFF6E7983),fontWeight: FontWeight.w500, fontFamily: 'Inter',),
                    ),
                    items: _addtimeAfterItems(timeItems),
                    customItemsIndexes: _gettimeIndexes(),
                    customItemsHeight: 1,
                    value: selectedtimeValues,
                    onChanged: (value) {
                      setState(() {
                        selectedtimeValues = value as String;
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



          SizedBox(width: 10,),

        ],
      ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.fromLTRB(30, 05, 45, 0),
            child: Text(
              "Eg:- Rs. 50/min", style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
              //fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),


        SizedBox( height: MediaQuery.of(context).size.width * 0.4,),


        Container(
          decoration: BoxDecoration(
            //border: Border.all(color:  Color(0xFFF0F0F0), width: 1),
            borderRadius: BorderRadius.circular(00),
            color: Color(0x4DE7CC86),),
          child: Theme(
            data: ThemeData().copyWith(dividerColor: Colors.transparent),
            child:ExpansionTile(


              trailing:     Image(
                image: new AssetImage("assets/img_40.png"), width: 20, height: 20, alignment: Alignment.center,
              ),
              leading:Text('') ,
              title: Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(50.0, 0, 50, 0),
                  width: double.infinity,

                  child:Text('ADVANCE SETTING',style: TextStyle(
                      fontSize: 12,color: Color(0xFFD08328), fontFamily: 'Inter', fontWeight: FontWeight.w500), //Textstyle
                  ),
                ),
              ),

              children: <Widget>[
                Container(
                  color: Color(0xFFF0F0F0),
                  child: Column(
                    children: [
                      SizedBox(height: 5,),

                      Row(

                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(18, 10, 10, 10),
                              child: Text(
                                "Do you have any offer sale ?", style: TextStyle(
                                  fontWeight: FontWeight.w500,fontFamily: 'Inter',
                                  fontSize: 10, color: Colors.black
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
                                        fontSize: 23,
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
                                        fontSize: 23,
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

                      SizedBox(height: 10.0,),
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(width: 20.0,),
                          new Flexible(
                            child: new Text('Your OFFER %', style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Inter',
                                fontSize: 10, color: Colors.black),

                            ),
                          ),
                          SizedBox(  width: MediaQuery.of(context).size.width*0.3,),
                          new Flexible(
                            child: new Text('Your Final OFFER Price ', style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Inter',
                                fontSize: 10, color: Colors.black),

                            ),
                          ),
                          SizedBox(width: 0.0,),

                        ],
                      ),

                      SizedBox(height: 5,),

                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          //SizedBox(width: 10.0,),
                          new Flexible(
                            child: new  Container(
                              padding: const EdgeInsets.fromLTRB(18, 0, 0, 05),
                              //  padding: const EdgeInsets.all(10),
                              height: 40.0,
                              width: MediaQuery.of(context).size.width*0.5,
                              child: TextField(
                                controller: _offerController,
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(color:Color(0xFFFFFFFF), width: 1.0),
                                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                  // borderRadius: BorderRadius.circular(10.0),
                                  //fillColor: Colors.white,
                                  fillColor: Colors.white, filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.black54)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.black54)),
                                  hintText: 'Eg. 60%',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w500,fontFamily: 'Inter',
                                      fontSize: 10, color: Color(0xFF6E7983)
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 10.0,),
                          new Flexible(
                            child: new  Container(
                              padding: const EdgeInsets.fromLTRB(0, 0, 18, 05),
                              //  padding: const EdgeInsets.all(10),
                              height: 40.0,
                              width: MediaQuery.of(context).size.width*0.5,
                              child: TextField(
                                controller: _finalofferController,
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(color:Color(0xFFFFFFFF), width: 1.0),
                                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                  // borderRadius: BorderRadius.circular(10.0),
                                  //fillColor: Colors.white,
                                  fillColor: Colors.white, filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.black12)),
                                  hintText: '',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w500,fontFamily: 'Inter',
                                      fontSize: 10, color: Color(0xFF6E7983)
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),


                      SizedBox(height: 20.0,),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(width: 18.0,),
                          new Flexible(
                            child: new Text('Offer Start Date', style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Inter',
                                fontSize: 10, color: Colors.black),

                            ),
                          ),
                          SizedBox(  width: MediaQuery.of(context).size.width*0.27,),
                          new Flexible(
                            child: new Text('Offer End Date', style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Inter',
                                fontSize: 10, color: Colors.black),

                            ),
                          ),
                          SizedBox(width: 50.0,),

                        ],
                      ),
                      SizedBox(height: 05,),

                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(18, 0, 5, 0),
                              child:  Container(
                                padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                                height: 38.0,
                                width: MediaQuery.of(context).size.width*0.42,
                                decoration: BoxDecoration(
                                  //border: Border.all(color: Colors.red, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,

                                  //shape: BoxShape.circle,
                                ),
                                child:TextField(
                                  // readOnly: true,
                                  controller: startDateController,
                                  decoration: InputDecoration(
                                    hintText: 'CHOOSE DATE', hintStyle: TextStyle(   fontWeight: FontWeight.w500,fontFamily: 'Inter',
                                      fontSize: 10, color: Color(0xFF6E7983)),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 0.0),

                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                      borderSide: BorderSide(width: 1,color: Colors.transparent),
                                    ),
                                  ),
                                  style: const TextStyle(color: Colors.black54, fontSize: 12, backgroundColor: Colors.white, ),

                                  onTap: () async {
                                    var date =  await showDatePicker(
                                        context: context,
                                        initialDate:DateTime.now(),
                                        firstDate:DateTime(1900),
                                        lastDate: DateTime(2100));
                                    startDateController.text = date.toString().substring(0,10);
                                  },
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child:  Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child:  Container(
                                padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                                height: 38.0,
                                width: MediaQuery.of(context).size.width*0.42,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black12, width: 1),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,

                                  //shape: BoxShape.circle,
                                ),
                                child:TextField(
                                  // readOnly: true,
                                  controller: endDateController,
                                  decoration: InputDecoration(
                                    hintText: 'CHOOSE DATE', hintStyle: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Inter',
                                      fontSize: 10, color: Color(0xFF6E7983)),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white, width: 0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                      borderSide: BorderSide(width: 1,color: Colors.transparent),
                                    ),
                                  ),
                                  style: const TextStyle(color: Colors.black54, fontSize: 12, backgroundColor: Colors.white, ),
                                  onTap: () async {
                                    var date =  await showDatePicker(
                                        context: context,
                                        initialDate:DateTime.now(),
                                        firstDate:DateTime(1900),
                                        lastDate: DateTime(2100));
                                    endDateController.text = date.toString().substring(0,10);
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),




                      SizedBox(height: 20.0,),

                    ],
                  ),
                )

              ],
              //backgroundColor: Colors.transparent,
            ),
          ),


        ),





        SizedBox(height: 20.0,),



        Align(
          alignment: Alignment.bottomCenter,
          child:  Container(
            //decoration: const BoxDecoration(color: Colors.black),
            margin: EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width * 1.0,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(8),
              // color:Colors.white,

            ),
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                primary: Colors.black, // background
                onPrimary: Colors.white, // foreground
                padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Master()),
                );
              },
              child: const Text('SAVE DETAILS',
                style: TextStyle(
                  color:Colors.white,
                  fontSize:15,

                  fontWeight: FontWeight.bold,
                ),
              ),

            ),
          ),

        )




    ],
    ),
    ),
    ),

      // bottomSheet: Container(
      //   color: Color(0xF0F0F0F0),
      //   height: MediaQuery.of(context).size.height * 0.4,
      //   child: Column(
      //   //  mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //
      //       Container(
      //         padding: const EdgeInsets.fromLTRB(100.0, 10, 100, 10),
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //           border: Border.all(color: Colors.black12, width: 1),
      //           borderRadius: BorderRadius.circular(00),
      //           color: Colors.orange[50],),
      //         child:Text('ADVANCE SETTING',style: TextStyle( fontSize: 12,color: Colors.orangeAccent,), //Textstyle
      //         ),
      //       ),
      //
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Align(
      //             alignment: Alignment.centerLeft,
      //             child: Container(
      //               padding: const EdgeInsets.fromLTRB(15, 10, 45, 10),
      //               child: Text(
      //                 "Do you have any offer sale ?", style: TextStyle(
      //                 fontSize: 10,
      //                 color: Colors.black,
      //                 //fontWeight: FontWeight.bold,
      //               ),
      //               ),
      //             ),
      //           ),
      //           Switch(
      //             value: isSwitched,
      //             activeColor: Colors.blue,
      //             onChanged: (value) {
      //               print("VALUE : $value");
      //               setState(() {
      //                 isSwitched = value;
      //               });
      //             },
      //           ),
      //
      //
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: <Widget>[
      //           SizedBox(width: 0.0,),
      //           new Flexible(
      //             child: new Text('Your OFFER %', style: TextStyle(fontSize: 10),
      //
      //             ),
      //           ),
      //           SizedBox(width:30.0,),
      //           new Flexible(
      //             child: new Text('Your Final OFFER Price ', style: TextStyle(fontSize: 10),
      //
      //             ),
      //           ),
      //           SizedBox(width: 0.0,),
      //
      //         ],
      //       ),
      //
      //       SizedBox(height: 5,),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: <Widget>[
      //           SizedBox(width: 10.0,),
      //           new Flexible(
      //             child: new  Container(
      //               padding: const EdgeInsets.fromLTRB(25, 0, 10, 05),
      //               //  padding: const EdgeInsets.all(10),
      //               height: 40.0,
      //               //width:350,
      //               child: TextField(
      //                 controller: _offerController,
      //                 decoration: InputDecoration(
      //                   enabledBorder: const OutlineInputBorder(
      //                     borderSide: const BorderSide(color:Color(0xFFFFFFFF), width: 1.0),
      //                     borderRadius: BorderRadius.all(Radius.circular(12.0)),
      //                   ),
      //                   // borderRadius: BorderRadius.circular(10.0),
      //                   //fillColor: Colors.white,
      //                   fillColor: Colors.white, filled: true,
      //                   border: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(10),
      //                       borderSide: BorderSide(color: Colors.black54)
      //                   ),
      //                   focusedBorder: OutlineInputBorder(
      //                       borderRadius:
      //                       BorderRadius.all(Radius.circular(10.0)),
      //                       borderSide: BorderSide(color: Colors.black54)),
      //                   hintText: 'Eg. 60%',
      //                   hintStyle: TextStyle(
      //                     color: Colors.grey, // <-- Change this
      //                     fontSize: 10,
      //                     fontWeight: FontWeight.w400,
      //                     fontStyle: FontStyle.normal,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //
      //           SizedBox(width: 20.0,),
      //           new Flexible(
      //             child: new  Container(
      //               padding: const EdgeInsets.fromLTRB(0, 0, 45, 05),
      //               //  padding: const EdgeInsets.all(10),
      //               height: 40.0,
      //               // width:350,
      //               child: TextField(
      //                 controller: _finalofferController,
      //                 decoration: InputDecoration(
      //                   enabledBorder: const OutlineInputBorder(
      //                     borderSide: const BorderSide(color:Color(0xFFFFFFFF), width: 1.0),
      //                     borderRadius: BorderRadius.all(Radius.circular(12.0)),
      //                   ),
      //                   // borderRadius: BorderRadius.circular(10.0),
      //                   //fillColor: Colors.white,
      //                   fillColor: Colors.white, filled: true,
      //                   border: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(10),
      //                   ),
      //                   focusedBorder: OutlineInputBorder(
      //                       borderRadius:
      //                       BorderRadius.all(Radius.circular(10.0)),
      //                       borderSide: BorderSide(color: Colors.black12)),
      //                   hintText: '',
      //                   hintStyle: TextStyle(
      //                     color: Colors.grey, // <-- Change this
      //                     fontSize: 12,
      //                     fontWeight: FontWeight.w400,
      //                     fontStyle: FontStyle.normal,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //
      //
      //       SizedBox(height: 15.0,),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: <Widget>[
      //           SizedBox(width: 0.0,),
      //           new Flexible(
      //             child: new Text('Offer Start Date', style: TextStyle(fontSize: 10,),
      //
      //             ),
      //           ),
      //           SizedBox(width: 20.0,),
      //           new Flexible(
      //             child: new Text('Offer End Date', style: TextStyle(fontSize: 10,),
      //
      //             ),
      //           ),
      //           SizedBox(width: 50.0,),
      //
      //         ],
      //       ),
      //       SizedBox(height: 05,),
      //       Row(
      //         children: [
      //           Align(
      //             alignment: Alignment.centerLeft,
      //             child: Padding(
      //               padding: const EdgeInsets.fromLTRB(35, 0, 00, 0),
      //               child:  Container(
      //                 padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
      //                 height: 35.0,
      //                 width:150,
      //                 decoration: BoxDecoration(
      //                   //border: Border.all(color: Colors.red, width: 1),
      //                   borderRadius: BorderRadius.circular(10),
      //                   color: Colors.white,
      //
      //                   //shape: BoxShape.circle,
      //                 ),
      //                 child:TextField(
      //                   // readOnly: true,
      //                   controller: startDateController,
      //                   decoration: InputDecoration(
      //                     hintText: 'CHOOSE DATE', hintStyle: TextStyle(fontSize: 10,),
      //                     enabledBorder: const OutlineInputBorder(
      //                       borderSide: const BorderSide(color: Colors.white, width: 0.0),
      //
      //                     ),
      //                     focusedBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.all(Radius.circular(4)),
      //                       borderSide: BorderSide(width: 1,color: Colors.transparent),
      //                     ),
      //                   ),
      //                   style: const TextStyle(color: Colors.black54, fontSize: 12, backgroundColor: Colors.white, ),
      //
      //                   onTap: () async {
      //                     var date =  await showDatePicker(
      //                         context: context,
      //                         initialDate:DateTime.now(),
      //                         firstDate:DateTime(1900),
      //                         lastDate: DateTime(2100));
      //                     startDateController.text = date.toString().substring(0,10);
      //                   },
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Align(
      //             alignment: Alignment.centerLeft,
      //             child:  Padding(
      //               padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      //               child:  Container(
      //                 padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
      //                 height: 35.0,
      //                 width:150,
      //                 decoration: BoxDecoration(
      //                   border: Border.all(color: Colors.black12, width: 1),
      //                   borderRadius: BorderRadius.circular(10),
      //                   color: Colors.white,
      //
      //                   //shape: BoxShape.circle,
      //                 ),
      //                 child:TextField(
      //                   // readOnly: true,
      //                   controller: endDateController,
      //                   decoration: InputDecoration(
      //                     hintText: 'CHOOSE DATE', hintStyle: TextStyle(fontSize: 10,),
      //                     enabledBorder: const OutlineInputBorder(
      //                       borderSide: const BorderSide(color: Colors.white, width: 0.0),
      //                     ),
      //                     focusedBorder: OutlineInputBorder(
      //                       borderRadius: BorderRadius.all(Radius.circular(4)),
      //                       borderSide: BorderSide(width: 1,color: Colors.transparent),
      //                     ),
      //                   ),
      //                   style: const TextStyle(color: Colors.black54, fontSize: 12, backgroundColor: Colors.white, ),
      //                   onTap: () async {
      //                     var date =  await showDatePicker(
      //                         context: context,
      //                         initialDate:DateTime.now(),
      //                         firstDate:DateTime(1900),
      //                         lastDate: DateTime(2100));
      //                     endDateController.text = date.toString().substring(0,10);
      //                   },
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //
      //
      //
      //
      //       SizedBox(height: 20.0,),
      //
      //
      //
      //       Align(
      //         alignment: Alignment.bottomCenter,
      //         child:  Container(
      //           //decoration: const BoxDecoration(color: Colors.black),
      //           margin: EdgeInsets.all(10.0),
      //           // padding: EdgeInsets.all(12.0),
      //           decoration:BoxDecoration(
      //             borderRadius:BorderRadius.circular(8),
      //             // color:Colors.white,
      //
      //           ),
      //           child: ElevatedButton(
      //
      //             style: ElevatedButton.styleFrom(
      //               primary: Colors.black, // background
      //               onPrimary: Colors.white, // foreground
      //               padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
      //               shape: new RoundedRectangleBorder(
      //                 borderRadius: new BorderRadius.circular(10.0),
      //               ),
      //             ),
      //             onPressed: () {
      //
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => Master()),
      //               );
      //             },
      //             child: const Text('SAVE DETAILS',
      //               style: TextStyle(
      //                 color:Colors.white,
      //                 fontSize:15,
      //
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //
      //           ),
      //         ),
      //
      //       )
      //
      //
      //     ],
      //   ),
      //   ),







    );

  }
}