import 'package:flutter/material.dart';
import 'package:furniture_ui/users.dart';
import 'users.dart';
//import 'package:google_fonts/google_fonts.dart';

class Userlist extends StatelessWidget{
  const Userlist(this.user);
  @required
  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Flexible(
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(10.0),
              //     child: FadeInImage.assetNetwork(
              //       placeholder: "images/no_image.png",
              //       image: user.platfom,
              //       width: 100,
              //       height: 100,
              //     ),
              //   ),
              // ),

            ],
          ),
        ),
      ),
    );
  }
}