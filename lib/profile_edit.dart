// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:flutter/painting.dart';
//
//
// class ProfileEdit extends StatelessWidget {
//   ProfileEdit({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //title: _title,
//       home:Scaffold(
//         backgroundColor:  Color(0x2EAEABAB),
//         //backgroundColor:  Colors.black12,
//         appBar: AppBar(
//           backgroundColor: Colors.white54,
//           elevation: 0,
//           title: IconButton(
//             icon: Icon(Icons.arrow_back, color:Colors.black, size:20),
//             onPressed: () {
//               Navigator.pop(context);
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => AllBookingAppointment()),
//               // );
//             },
//           ),
//           //Text('How it works?'),
//           // flexibleSpace: Image(
//           //   image: AssetImage('assets/arjun.png'),
//           //   height: 200,
//           //   fit: BoxFit.cover,
//           // ),
//           //centerTitle: true,
//
//         ),
//         body: SingleChildScrollView(
//           child: IntrinsicHeight(
//             child: ProfileEditStatefulView(),
//           ),
//         ),
//
//       ),
//     );
//   }
// }
// class ProfileEditStatefulView extends StatefulWidget {
//   const ProfileEditStatefulView({Key? key}) : super(key: key);
//
//   @override
//   State<ProfileEditStatefulView> createState() => _ProfileEditStatefulViewState();
// }
//
// class _ProfileEditStatefulViewState extends State<ProfileEditStatefulView > {
//  // final TextEditingController _nameController = TextEditingController();
//
// //  Price
// //
// //   String? dropdownValuePrice = 'RUPEES - (Rs.)';
// //   List<String> dropdownItemsPrice = <String>[
// //     'RUPEES - (Rs.)',
// //     '300',
// //     '400',
// //     '500',
// //     "600",
// //     "700"
// //   ];
//   late File _storedImage;
//
//   Future<void> pickImage() async {
//     final imageFIle = await ImagePicker.getImage(source: ImageSource.camera, maxWidth:400,
//     );
//
//     setState(() {
//       _storedImage = imageFIle as File;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return  SingleChildScrollView(
//         child: IntrinsicHeight(
//           child:  Padding(
//             padding: const EdgeInsets.fromLTRB(020, 0, 20, 20),
//             //color: Colors.red,
//             child:
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 Stack(
//                   children: <Widget>[
//                     // Container(
//                     //   alignment: Alignment.center,
//                     //   child: Image(
//                     //     image: new AssetImage("assets/gradient.PNG"),
//                     //     // width: 30,
//                     //     height: 50,
//                     //     width: double.infinity,
//                     //     fit: BoxFit.cover,
//                     //     // color: null,
//                     //     //fit: BoxFit.scaleDown,
//                     //     alignment: Alignment.center,
//                     //   ),
//                     // ),
//                     Container(
//                         alignment: Alignment.center,
//                         padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
//                         child: Text(
//                           'Profile Edit',
//                           style: TextStyle(color: Colors.black,
//                              // fontWeight: FontWeight.bold,
//                               fontSize: 15.0),
//                         )),
//                   ],
//                 ),
//
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//
//                     padding: const EdgeInsets.fromLTRB(10, 10, 00, 10),
//                     child: Text(
//                       "Name", style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.black,
//                       //fontWeight: FontWeight.bold,
//                     ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//
//                     padding: const EdgeInsets.fromLTRB(00, 0, 00, 10),
//                     child: Card(
//                         color: Colors.white,
//                         child: Padding(
//                           padding: EdgeInsets.all(15.0),
//                           child: TextField(
//                             maxLines: 1,
//                             decoration: InputDecoration.collapsed(hintText: "Arjun"),
//                           ),
//                         )
//                     ),
//                   ),
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Align(
//                       alignment: Alignment.centerLeft,
//
//                       child: Container(
//                         padding: const EdgeInsets.fromLTRB(0, 10, 10, 15),
//                         child:  Text("Add Profile Photo", style: TextStyle(fontSize: 15, color: Colors.black),),
//
//                       ),
//                     ),
//                     // IconButton(
//                     //   icon: Icon(Icons.add_circle_outlined, color:Colors.black, size:20),
//                     //   onPressed: () {
//                     //     // Navigator.push(
//                     //     //   context,
//                     //     //   MaterialPageRoute(builder: (context) => ProfileEdit()),
//                     //     // );
//                     //   },
//                     // ),
//
//                   ],
//                 ),
//
//             Expanded(
//                  child: FlatButton.icon(
//
//                   icon:Icon(Icons.camera),
//                    label: Text("Add Image"),
//                    textColor: Theme.of(context).primaryColor,
//                    onPressed: pickImage,
//                  ),
//                  ),
//
//
//                 // Align(
//                 //   alignment: Alignment.centerLeft,
//                 //
//                 //   child: Center(
//                 //     child: _image == null
//                 //         ? new Text('No image selected.')
//                 //         : new Image.file(_image),
//                 //   ),
//                 //   floatingActionButton: new FloatingActionButton(
//                 //     onPressed: getImage,
//                 //     tooltip: 'Pick Image',
//                 //     child: new Icon(Icons.add_a_photo),
//                 //   ),
//                 //
//                 // ),
//
//                 Align(
//                   alignment: Alignment.centerLeft,
//
//                   child: Container(
//                     padding: const EdgeInsets.fromLTRB(0, 10, 10, 15),
//                     child:  Text("Video", style: TextStyle(fontSize: 15, color: Colors.black),),
//
//                   ),
//                 ),
//
//
//
//
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//
//                     padding: const EdgeInsets.fromLTRB(0, 10, 00, 10),
//                     child: Text(
//                       "Description", style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.black,
//                       //fontWeight: FontWeight.bold,
//                     ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//
//                     padding: const EdgeInsets.fromLTRB(00, 0, 00, 10),
//                     child: Card(
//                         color: Colors.white,
//                         child: Padding(
//                           padding: EdgeInsets.all(15.0),
//                           child: TextField(
//                             maxLines: 4,
//                             decoration: InputDecoration.collapsed(hintText: "PLEASE MENTION DESCRIPTION",
//                                 hintStyle: TextStyle(fontSize: 13,)),
//                           ),
//                         )
//                     ),
//                   ),
//                 ),
//
//
//
//
//
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//
//                     new Flexible(child:  Align(
//                       alignment: Alignment.bottomCenter,
//                       child:  Container(
//                         // decoration: const BoxDecoration(color: Colors.black),
//                         margin: EdgeInsets.all(10.0),
//                         // padding: EdgeInsets.all(12.0),
//                         decoration:BoxDecoration(
//                           borderRadius:BorderRadius.circular(8),
//                           color:Colors.black,
//
//                         ),
//                         child: ElevatedButton(
//
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.black, // background
//                             onPrimary: Colors.white, // foreground
//                             padding: const EdgeInsets.fromLTRB(150, 20, 150, 20),
//                           ),
//                           onPressed: () {
//
//                             // Navigator.push(
//                             //   context,
//                             //   MaterialPageRoute(builder: (context) => EditBookAppointmentPrice()),
//                             // );
//                           },
//                           child: const Text('CREATE NEW',
//                             style: TextStyle(
//                               color:Colors.white,
//                               fontSize:15,
//
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//
//                         ),
//                       ),
//
//                     ),
//                     ),
//                   ], ),
//
//
//                 //SizedBox(height: 20.0,),
//
//
//
//
//
//
//               ],
//             ),
//           ),
//         ));
//   }
// }