import 'package:flutter/material.dart';

import 'homescreen.dart';
import 'loginscreen.dart';

//import 'package:sms_autofill/sms_autofill.dart';


class DetailScreen extends StatefulWidget {
  final number;

  // In the constructor, require a Todo.
  const DetailScreen({Key? key, required this.number,}) : super(key: key);
  // Step 2 <-- SEE HERE

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen> {
  // 4 text editing controllers that associate with the 4 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();


  // This is the entered code
  // It will be displayed in a Text widget
  String? _otp;
  //
  //
  // String _code="";
  // String signature = "{{ app signature }}";
  //
  // @override
  // void initState() {
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   SmsAutoFill().unregisterListener();
  //   super.dispose();
  // }
  //

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  LoginView()),
            );
          },

          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text('OTP Verification', style: TextStyle(
          color: Colors.black,
          fontFamily: 'Inter',
          fontSize: 20,
        )),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              const Text('We have sent a verification code to',  style: TextStyle(fontSize: 15, ),),
              Text(
                '+91 '+ '${widget.number}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
              const SizedBox(
                height: 30,
              ),

      //     Stack(
      //     //  fit: StackFit.expand,
      //       children: <Widget>[Column(
      //
      //           // mainAxisAlignment: MainAxisAlignment.center,
      //           // crossAxisAlignment: CrossAxisAlignment.stretch,
      //           children: <Widget>[
      //             PhoneFieldHint(),
      //
      //             PinFieldAutoFill(
      //               decoration: UnderlineDecoration(
      //                 textStyle: TextStyle(fontSize: 20, color: Colors.black),
      //                 colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
      //               ),
      //               currentCode: _code,
      //               onCodeSubmitted: (code) {},
      //               onCodeChanged: (code) {
      //                 if (code!.length == 6) {
      //                   FocusScope.of(context).requestFocus(FocusNode());
      //                 }
      //                 print('Genearate OTP :' + code);
      //               },
      //             ),
      //
      //             TextFieldPinAutoFill(
      //               currentCode: _code,
      //             ),
      //
      //             ElevatedButton(
      //               child: Text('Listen for sms code'),
      //               onPressed: () async {
      //                 await SmsAutoFill().listenForCode;
      //               },
      //             ),
      //             ElevatedButton(
      //               child: Text('Set code to 123456'),
      //               onPressed: () async {
      //                 setState(() {
      //                   _code = '123456';
      //                 });
      //               },
      //             ),
      //             SizedBox(height: 8.0),
      //             Divider(height: 1.0),
      //             SizedBox(height: 4.0),
      //             Text("App Signature : $signature"),
      //             SizedBox(height: 4.0),
      //             ElevatedButton(
      //               child: Text('Get app signature'),
      //               onPressed: () async {
      //                 signature = await SmsAutoFill().getAppSignature;
      //                 setState(() {});
      //               },
      //             ),
      //             ElevatedButton(
      //               onPressed: () {
      //                 Navigator.of(context).push(MaterialPageRoute(builder: (_) => CodeAutoFillTestPage()));
      //               },
      //               child: Text("Test CodeAutoFill mixin"),
      //             )
      //           ],
      //         ),
      //
      //   ],
      // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpInput(_fieldOne, true),
                  OtpInput(_fieldTwo, false),
                  OtpInput(_fieldThree, false),
                  OtpInput(_fieldFour, false),
                  OtpInput(_fieldFive, false),
                  OtpInput(_fieldSix, false)
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Resend SMS in 19', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                    Text('Call me in 19', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),


                  ]
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Try other login methods', style: TextStyle(fontSize: 12,
                      color: Color(0xFFFF4343),
                      fontFamily: 'Inter',)),


                  ]
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  setState(() {
                    _otp = _fieldOne.text +
                        _fieldTwo.text +
                        _fieldThree.text +
                        _fieldFour.text +
                        _fieldFive.text +
                        _fieldSix.text;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                },
                child: const Text('Submit'),

              ),
              const SizedBox(
                height: 30,
              ),





            ],
          ),
        ),
        ),
      );

  }
}
// class CodeAutoFillTestPage extends StatefulWidget {
//   @override
//   _CodeAutoFillTestPageState createState() => _CodeAutoFillTestPageState();
// }
//
// class _CodeAutoFillTestPageState extends State<CodeAutoFillTestPage> with CodeAutoFill {
//   String? appSignature;
//   String? otpCode;
//
//   @override
//   void codeUpdated() {
//     setState(() {
//       otpCode = code!;
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     listenForCode();
//
//     SmsAutoFill().getAppSignature.then((signature) {
//       setState(() {
//         appSignature = signature;
//         print(appSignature);
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     cancel();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final textStyle = TextStyle(fontSize: 18);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Listening for code"),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
//             child: Text(
//               "This is the current app signature: $appSignature",
//             ),
//           ),
//           const Spacer(),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 32),
//             child: Builder(
//               builder: (_) {
//                 if (otpCode == null) {
//                   return Text("Listening for code...", style: textStyle);
//                 }
//                 return Text("Code Received: $otpCode", style: textStyle);
//               },
//             ),
//           ),
//           const Spacer(),
//         ],
//       ),
//     );
//   }
// }

// Create an input widget that takes only one digit
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 45,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}



//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:furniture_ui/view/homescreen.dart';
//
// import 'loginscreen.dart';
//
//
// class Otp extends StatefulWidget {
//   final number;
//   const Otp({Key? key, this.number}) : super(key: key);
//
//   @override
//   State<Otp> createState() => _OtpState();
// }
//
//
// class _OtpState extends State<Otp> {
//   // 4 text editing controllers that associate with the 4 input fields
//   final TextEditingController _fieldOne = TextEditingController();
//   final TextEditingController _fieldTwo = TextEditingController();
//   final TextEditingController _fieldThree = TextEditingController();
//   final TextEditingController _fieldFour = TextEditingController();
//   final TextEditingController _fieldFive = TextEditingController();
//   final TextEditingController _fieldSix = TextEditingController();
//
//   // This is the entered code
//   // It will be displayed in a Text widget
//   String? _otp;
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: InkWell(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) =>  LoginView()),
//             );
//           },
//
//           child: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.black,
//           ),
//         ),
//         title: const Text('OTP Verification', style: TextStyle(
//           color: Colors.black,
//           fontFamily: 'Inter',
//           fontSize: 20,
//         )),
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child:Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 30,
//             ),
//             const Text('We have sent a verification code to',  style: TextStyle(fontSize: 15, ),),
//              Text(, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
//             const SizedBox(
//               height: 30,
//             ),
//             // Implement 4 input fields
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 OtpInput(_fieldOne, true),
//                 OtpInput(_fieldTwo, false),
//                 OtpInput(_fieldThree, false),
//                 OtpInput(_fieldFour, false),
//                 OtpInput(_fieldFive, false),
//                 OtpInput(_fieldSix, false)
//               ],
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Text('Resend SMS in 19', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
//                   Text('Call me in 19', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
//
//
//                 ]
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Text('Try other login methods', style: TextStyle(fontSize: 12,
//                     color: Color(0xFFFF4343),
//                     fontFamily: 'Inter',)),
//
//
//                 ]
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   primary: Colors.black,
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                   textStyle: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold)),
//               onPressed: () {
//                 setState(() {
//                   _otp = _fieldOne.text +
//                       _fieldTwo.text +
//                       _fieldThree.text +
//                       _fieldFour.text +
//                       _fieldFive.text +
//                       _fieldSix.text;
//                 });
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => HomeView()),
//                 );
//               },
//               child: const Text('Submit'),
//
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             // Display the entered OTP code
//             // Text(
//             //   _otp ?? 'Please enter OTP',
//             //   style: const TextStyle(fontSize: 30),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // Create an input widget that takes only one digit
// class OtpInput extends StatelessWidget {
//   final TextEditingController controller;
//   final bool autoFocus;
//   const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 45,
//       width: 45,
//       child: TextField(
//         autofocus: autoFocus,
//         textAlign: TextAlign.center,
//         keyboardType: TextInputType.number,
//         controller: controller,
//         maxLength: 1,
//         cursorColor: Theme.of(context).primaryColor,
//         decoration: const InputDecoration(
//             border: OutlineInputBorder(),
//             counterText: '',
//             hintStyle: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold)),
//         onChanged: (value) {
//           if (value.length == 1) {
//             FocusScope.of(context).nextFocus();
//           }
//         },
//       ),
//     );
//   }
// }