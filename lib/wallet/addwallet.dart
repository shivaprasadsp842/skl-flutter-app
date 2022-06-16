import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddWallet extends StatefulWidget {
  const AddWallet({Key? key}) : super(key: key);

  @override
  State<AddWallet> createState() => _AddWalletState();
}

class _AddWalletState extends State<AddWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.grey,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: new Text('',style: TextStyle(fontSize: 15,  color: Colors.white,),),
        bottom: PreferredSize(
          child: Column(
            children: [

              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                color: Colors.black,
                constraints: BoxConstraints.expand(height: 40),
                child: Text("Add Money to Your Personal Wallet",style: TextStyle(fontSize: 15,  color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                color: Colors.black,
                constraints: BoxConstraints.expand(height: 40),
                child: Text("To avoid uninterrupted services, people keep sufficient amount in their wallet.",style: TextStyle(fontSize: 15,  color: Colors.white, ),
                ),
              ),

              SizedBox(height:20,width:10,),
            ],
          ),
          preferredSize: Size(120, 120),
        ),
      ),
      body:  SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 00),
                child:    TextField(
                  maxLength: 10,
                  maxLines: 1,
                  minLines: 1,

                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    //labelText: "Phone number",
                    hintText: "₹ " + "Amount",
                    contentPadding: EdgeInsets.all(15),
                    counter: Offstage(),//  <- you can it to 0.0 for no space
                    isDense: true,
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      //border: InputBorder.none
                    ),
                  ),
                ),
              ),
      SizedBox(
        width: 300.0,
        height: 60.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 300.0,
                    height: 60.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // background
                        onPrimary: Colors.white, // foreground
                        padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                        side: BorderSide(width: 1, color: Colors.black,),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: (){},
                      child: const Text('Proceed Securely',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:15,
                        ),
                      ),

                    ),
                  ),
                ],
              ),
            ],
          ),


        ),

    );
  }
}
