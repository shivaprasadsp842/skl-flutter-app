import'package:flutter/material.dart';
import 'package:furniture_ui/view/homescreen.dart';
import 'package:custom_clippers/custom_clippers.dart';

class SuccessFull extends StatefulWidget {
  const SuccessFull({Key? key}) : super(key: key);

  @override
  State<SuccessFull> createState() => _SuccessFullState();
}

class _SuccessFullState extends State<SuccessFull> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
   //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 500),
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.0), // here the desired height
    child: Padding(
    padding: const EdgeInsets.all(5.0),
    child:AppBar(
          backgroundColor: Colors.transparent,
        elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  HomeView()),
              );
            },

            child: Image.asset(
              "assets/img_24.png",
              height: 15,width: 15,color: Colors.transparent,
            ),

          ),
          //iconTheme: IconThemeData(color: Colors.black),

          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 5,),
              CircleAvatar(
              backgroundColor: Color(0xFFFFFFFF),
              child:  IconButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  HomeView()),
                      );
                    },
                    icon: Image.asset(
                      "assets/img_24.png",
                      height: 15,
                    ),
                  ),
                  ),


                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Home', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700, fontFamily: 'Inter'), textAlign: TextAlign.start),



                      ],
                    ),
                  ),
                  // Icon(Icons.settings,color: Colors.black54,),

                ],
              ),
            ),
          ),
    ),
    ),
    ),
        backgroundColor: Colors.white,
        body:  SingleChildScrollView(
        child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: Column(children: <Widget>[
      ClipPath(
        clipper: MultiplePointsClipper(Sides.BOTTOM, heightOfPoint: 20),
        child: Container(
            height: MediaQuery.of(context).size.height*0.18,

            padding: EdgeInsets.all(20),
          color: Color(0xFF7DD8B7),
          alignment: Alignment.center,
          child: Text(
            '',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
          SizedBox(
            height: 10,
          ),
          CircleAvatar(radius: (50),
              backgroundColor: Color(0xff7DD8B7),
              child: ClipRRect(
                borderRadius:BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/r.png",
                    height: 100,
                  ),
              )
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Image.asset(
          //     "assets/img_4.png",
          //     height: 100,
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
    Container(

    child: Padding(
    padding: EdgeInsets.all(7.0),

            child: Text('We’ve received your request and are getting started on it right away.You will receive an email when your Question is accepted & Answered',
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w800,
                    fontFamily: 'Inter',
                  color: Color(0xFF6E7983),

                ),
                textAlign: TextAlign.center),
          ),
          ),
          Divider(
            color: Color(0xFFC4C4C4),
            height: 15,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 45, 05),
              child: Text(
                "Order Receipt", style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start
            ,
            children:  <Widget>[
              Expanded(
                child: Text('Date       : ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                    ),textAlign: TextAlign.end),
              ),
              Expanded(
                child: Text(' 26th Jan, 2021',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6E7983),
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.start),
              ),
              Expanded(
                child: Text('', textAlign: TextAlign.start),
              ),
            ],
          ),
          Row(
            children:  <Widget>[
              Expanded(
                child: Text('Order ID : ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                    ),textAlign: TextAlign.end),
              ),
              Expanded(
                child: Text(' GG763JE6',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6E7983),
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.start),
              ),
              Expanded(
                child: Text('', textAlign: TextAlign.start),
              ),
            ],
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 45, 05),
              child: Text(
                "Billed To", style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ),
              ),
            ),
          ),
          Row(
            children:  <Widget>[
              Expanded(
                child: Text('Customer Number : ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                    ),textAlign: TextAlign.end),
              ),
              Expanded(
                child: Text(' HD7637DGE',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6E7983),
                      fontWeight: FontWeight.w700, fontFamily: 'Inter',
                    ),textAlign: TextAlign.start),
              ),
              // Expanded(
              //   child: Text('', textAlign: TextAlign.start),
              // ),
            ],
          ),
          Row(
            children:  <Widget>[
              Expanded(
                child: Text('Customer Name     : ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                    ),textAlign: TextAlign.end),
              ),
              Expanded(
                child: Text(' Arjun Chaithanya',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6E7983), fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,

                    ),textAlign: TextAlign.start),
              ),
              // Expanded(
              //   child: Text('', textAlign: TextAlign.start),
              // ),
            ],
          ),
          Container(

            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
              child:  Text('PLEASE CHECK YOUR CALENDER FOR APPOINTMENT SCHEDULES UPDATES',
                    style: TextStyle(
                      fontSize: 9,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Color(0XFFCAC9C9),
                    ),
                    textAlign: TextAlign.center),
              ),
            ),



      Divider(
        color: Color(0xFFC4C4C4),
        height: 15,
        thickness: 1,
        indent: 10,
        endIndent: 10,
      ),

          Container(

            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
              child: Text('You will get full refund if request is not completed in 7days',
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Color(0XFFCAC9C9),
                    ),
                    textAlign: TextAlign.center),
              ),
            ),

          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Expanded(
                child: Text('TOTAL',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF6E7377),
                    ),textAlign: TextAlign.center),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Text('Rs. 2000',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00AD81),
                    ),
                    textAlign: TextAlign.center),
              ),

            ],
          ),

          Container(

            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 15, 5, 10),
              child: Text('CONGRALUTAIONS',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800, fontFamily: 'Inter',
                      color: Color(0xFF6E7983),
                    ),
                    textAlign: TextAlign.center),
              ),
            ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/barcode.png",
              height: 95,

            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: const <Widget>[
              Expanded(
                child: Text('TRACK YOUR REQUEST',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0x992593FA),
                      decoration: TextDecoration.underline,
                    ),textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('DOWNLOAD FULL RECIEPT',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0x992593FA),
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center),
              ),

            ],
          ),
      SizedBox(height: 15),
     Stack(
       children: [

         Padding(
           padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
         child:
         Container(
           height: 20,
           width: double.infinity,
           color:  Color(0xFF7DD8B7),
           padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
         ),
         ),

         Padding(
           padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
           child:ClipPath(
           clipper: MultiplePointsClipper(Sides.VERTICAL, heightOfPoint: 20),
           child: Container(
             height: 100,
             //padding: const EdgeInsets.fromLTRB(0, 140, 0, 0),
             color: Color(0xFF7DD8B7),
             alignment: Alignment.center,
             child: Text(
               '',
               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
             ),
           ),
         ),
         ),

         // Container(
         //   height: 20,
         //   width: double.infinity,
         //   color: Colors.red,
         //   padding: const EdgeInsets.fromLTRB(0, 140, 0, 10),
         // ),
         SizedBox(height: 20,),

       ],
     )



      ],
        ),
        ),

    ),
    );

  }
}

// class SuccessFull extends StatelessWidget {
//   const SuccessFull({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return   Padding(
//       padding: const EdgeInsets.fromLTRB(0, 0, 0, 500),
//       child: ClipPath(
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           color: Colors.tealAccent,
//         ),
//         clipper: CustomClipPath(),
//       ),
//     );
//
//   }
// }
//
// class CustomClipPath extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(0, size.height);
//     var curXPos = 0.0;
//     var curYPos = size.height;
//     var increment = size.width / 40;
//     while (curXPos < size.width) {
//       curXPos += increment;
//       curYPos = curYPos == size.height ? size.height - 25 : size.height;
//       path.lineTo(curXPos, curYPos);
//     }
//     path.lineTo(size.width, 0);
//
//
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
//
//
//
//
//}