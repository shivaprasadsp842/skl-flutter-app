// import 'dart:convert';
// import 'package:furniture_ui/users.dart';
// import 'package:http/http.dart' as http;
// import 'users.dart';
//
//
// class Services {
//   static var url = Uri.parse("http://192.168.0.19/inalltime_api/user/search_master.php");
//   static Future<List<User>> getPhotos() async{
//     try{
//       final response = await http.get(url);
//       if(response.statusCode==200)
//       {
//         List<User> list=parsePhotos(response.body);
//         return list;
//       }
//       else
//       {
//         throw Exception("Erroor");
//       }
//     }catch(e){
//       throw new Exception(e.toString());
//     }
//   }
//
//   static List<User> parsePhotos(String responseBody) {
//     final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
//     return parsed.map<User>((json)=>User.fromJson(json)).toList();
//   }
//
// }
//
// // import 'dart:convert';
// //
// // import 'users.dart';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// //
// //
// // class dept_emp_list extends StatefulWidget {
// //   @override
// //   _dept_emp_listState createState() => _dept_emp_listState();
// // }
// //
// // class _dept_emp_listState extends State<dept_emp_list> {
// //
// //
// //   List<User> emprecord = [];
// //
// //
// //   Future<List<User>> _getdeptemp() async {
// //     final response = await http.get('http://192.168.0.19/inalltime_api/user/platform.php');
// //     if(response.statusCode==200){
// //       List paresd = jsonDecode(response.body);
// //
// //       return paresd.map((emp) => User.fromJson(emp)).toList();
// //
// //     }
// //
// //
// //
// //   }
// //
// //
// //   @override
// //   void initState() {
// //     _getdeptemp();
// //     super.initState();
// //   }
// //
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Employee Data"),
// //       ),
// //       body: SafeArea(
// //         child:
// //         FutureBuilder(
// //             future:  _getdeptemp(),
// //             builder: (context,snapshot){
// //               if(snapshot.hasData){
// //                 return ListView.builder(
// //                   itemCount: snapshot.data.length,
// //                   itemBuilder: (context, index){
// //                     return ListTile(
// //                       leading: Text("${snapshot.data[index].departmentname}"),
// //                       title: Text("${snapshot.data[index].employeename}"),
// //                       subtitle: Text(" Employee ID ${snapshot.data[index].employeeid}"),
// //                       trailing: Text(" Employee Salary ${snapshot.data[index].employeesalary}"),
// //                     );
// //                   },
// //                 );
// //               }
// //               else{
// //                 return Center(child: CircularProgressIndicator());
// //               }
// //             }),
// //       ),
// //     );
// //   }
// // }