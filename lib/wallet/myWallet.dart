

import 'package:flutter/material.dart';
import 'package:furniture_ui/wallet/withdraw.dart';
import 'package:intl/intl.dart';

import 'addwallet.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  DateTime datetime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //  backgroundColor: Colors.grey,
        appBar: new AppBar(
          backgroundColor: Colors.black,
        elevation: 0.0,
          centerTitle: true,
        title: new Text('Your Wallet Balance',style: TextStyle(fontSize: 15,  color: Colors.white,),),
          bottom: PreferredSize(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.black,
                  constraints: BoxConstraints.expand(height: 50),
                  child: Text("₹ " + "5,327",style: TextStyle(fontSize: 30,  color: Colors.white,),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black,
                  constraints: BoxConstraints.expand(height: 50),
                  child: Text("Total Earnings - 39,300",style: TextStyle(fontSize: 15,  color: Colors.white,),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background
                        onPrimary: Colors.white, // foreground
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        side: BorderSide(width: 1, color: Colors.black,),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text('ADD MONEY',
                        style: TextStyle(
                          color:Colors.black,
                          fontSize:13,
                        ),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new AddWallet()),
                        );

                      },
                    ),
                    SizedBox(height:10,width:10,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background
                        onPrimary: Colors.white, // foreground
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        side: BorderSide(width: 1, color: Colors.black,),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text('WITHDRAW',
                        style: TextStyle(
                          color:Colors.black,
                          fontSize:13,
                        ),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => new Withdraw()),
                        );

                      },
                    ),
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     primary: Colors.white, // background
                    //     onPrimary: Colors.white, // foreground
                    //     padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                    //     shape: new RoundedRectangleBorder(
                    //       borderRadius: new BorderRadius.circular(10.0),
                    //     ),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => new Withdraw()),
                    //     );
                    //
                    //   },
                    //   child: const Text('WITHDRAW',
                    //     style: TextStyle(
                    //       color:Colors.black,
                    //       fontSize:13,
                    //     ),
                    //   ),
                    //
                    // ),
                  ],
                ),
                SizedBox(height:10,width:10,),
              ],
            ),
            preferredSize: Size(150, 150),
          ),
    ),
    body:  Container(
      padding: const EdgeInsets.all(15),
    child: SingleChildScrollView(
      child:Column(
        children: [
          Column(
        children: [
              Row(
               // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(DateFormat.yMMMEd().format(DateTime.now()) ,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text('- 5000',
                    style: TextStyle(color:Colors.red, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('APPOINTMENT - Recieved Rs. 5000 from Kavyashree Bhat (CC-30% 2000',
                  style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ref No. 39403987238372',
                      style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text('Balance :' + '8000',
                      style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ],
            )
        ],
      ),
          Divider(
            height: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
          ),
SizedBox(height:15),
          // 2nd row

          Column(
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(DateFormat.yMMMEd().format(DateTime.now()) ,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text('+ 3000',
                    style: TextStyle(color:Colors.green, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payout  withdrawan',
                    style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Ref No. 47973773983983',
                        style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text('Balance :' + '5000',
                        style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Divider(
            height: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
          ),

          Column(
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(DateFormat.yMMMEd().format(DateTime.now()) ,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text('- 5000',
                    style: TextStyle(color:Colors.red, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('APPOINTMENT - Recieved Rs. 5000 from Kavyashree Bhat (CC-30% 2000',
                    style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Ref No. 39403987238372',
                        style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text('Balance :' + '8000',
                        style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Divider(
            height: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
          ),
          SizedBox(height:15),
          // 2nd row

          Column(
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(DateFormat.yMMMEd().format(DateTime.now()) ,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text('+ 3000',
                    style: TextStyle(color:Colors.green, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payout  withdrawan',
                    style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Ref No. 47973773983983',
                        style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text('Balance :' + '5000',
                        style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Divider(
            height: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
          ),






      ],
    ),


    ),
    ),

    );
  }
}