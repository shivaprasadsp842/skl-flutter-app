
class User{

  String id;
  String name;
  String phone_no;
  String image;
  String wallet_amount;

  User({required this.id,
    required this.name,
    required this.phone_no,
    required this.image,
    required this.wallet_amount
  });



  factory User.fromJson(Map<String,dynamic>json)
  {
    return User(

      id: json['consultant_id'] as String,
      name: json['name'] as String,
      phone_no: json['phone_no'] as String,
      image: json['profile_image'] as String,
      wallet_amount: json['wallet_amount'] as String,
    );
  }
}




//
//
// import 'package:flutter/material.dart';
//
//
// class User{
//   String name;
//   String user_id;
//   String phone_no;
//   String image;
//   String wallet_amount;
//
//   User({required this.name,
//     required this.user_id,
//     required this.phone_no,
//     required this.image,
//     required this.wallet_amount});
//
//   factory User.fromJson(Map<String,dynamic>json)
//   {
//     return User(
//       name: json['name'] as String,
//       user_id: json['user_id'] as String,
//       phone_no: json['phone_no'] as String,
//       image: json['image'] as String,
//       wallet_amount: json['wallet_amount'] as String,
//     );
//   }
// }