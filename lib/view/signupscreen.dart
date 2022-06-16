import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_ui/view/loginscreen.dart';


class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscuredText = true;
  bool _isObscure = true;

  void _toggle() {
    setState(() {
      _obscuredText = !_obscuredText;
    });
  }

 //  validation
 // GlobalKey<FormState> _key = new GlobalKey();
 //  bool _validate = false;
 //  String  email;
 //
 //  String? validateEmail(String value) {
 //    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
 //    RegExp regExp = new RegExp(pattern);
 //    if (value.length == 0) {
 //      return "Email is Required";
 //    } else if(!regExp.hasMatch(value)){
 //      return "Invalid Email";
 //    }else {
 //      return null;
 //    }
 //  }
  // email validation
  // final _form = GlobalKey<FormState>();
  // bool _isValid = false;
  //
  // void _saveForm() {
  //   setState(() {
  //     _isValid = _form.currentState!.validate();
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Padding(
              padding: const EdgeInsets.all(10),
              // margin: EdgeInsets.all(20.0),

              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(75.0),
                    // Image Logo
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Create account',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                  Container(
                    padding: const EdgeInsets.fromLTRB(45, 05, 45, 00),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            ),
                        hintText: 'Mobile Number',
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ], // Only numbers can be entered
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(45, 0, 45, 10),
                    child: TextField(
                      //obscureText: true,
                      obscureText: _isObscure,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'PASSWORD',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),

                        // suffixIcon: IconButton(
                        //   icon: Icon(
                        //     Icons.remove_red_eye,
                        //     color: Colors.black,
                        //     //color: this._showPassword ? Colors.blue : Colors.grey,
                        //   ),
                        //   onPressed: _toggle,
                        // ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(45, 05, 45, 05),
                    //  padding: const EdgeInsets.all(10),

                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      // validator: (String value){
                      //   if(value.isEmpty)
                      //   {
                      //     return 'Please a Enter';
                      //   }
                      //   if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                      //     return 'Please a valid Email';
                      //   }
                      //   return null;
                      // },
                      // onSaved: (String value){
                      //   email = value;
                      // },
                      // onChanged: (val){
                      //   validateEmail(val);
                      // },
                      //textAlign: TextAlign.center,
                      // onChanged: (value) {
                      //   setState(() {
                      //     _email = value;
                      //     _emailOk = EmailValidator.validate(_email);
                      //   });
                      // },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        // borderRadius: BorderRadius.circular(10.0),
                        //fillColor: Colors.white,
                        fillColor: Colors.white, filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.transparent)),
                        hintText: 'E-MAIL',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(45, 05, 45, 05),
                    //  padding: const EdgeInsets.all(10),

                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        // borderRadius: BorderRadius.circular(10.0),
                        //fillColor: Colors.white,
                        fillColor: Colors.white, filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.transparent)),
                        hintText: 'ENTER YOUR NAME',
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100.0,
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    child: Column(
                      children: [
                        //  SizedBox(
                        // height:100, //height of button
                        // width:300,
                        // padding: EdgeInsets.all(20)An enabled button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white70, // background
                            onPrimary: Colors.black, // foreground
                            // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            //padding: EdgeInsets.all(12.0),
                            //padding: EdgeInsets.all(20.0),
                          ),
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          onPressed: () {},
                        ),
                        //);
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const Text(
                        'Or sign up using social media         ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        child: const Text(
                          'Sign in Here',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          // after sign up
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginView()),
                          );
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),

                  ),
        ));
  }
}

//For Email Verification we using RegEx.

