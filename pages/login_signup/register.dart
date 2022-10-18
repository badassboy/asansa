import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travel_pro/pages/bottom_bar.dart';
import 'package:travel_pro/constant/constant.dart';
import 'package:travel_pro/pages/login_signup/otp.dart';

import 'login.dart';

class Register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Registerform();

  }

}

class Registerform extends State<Register> {

  final _formKey = GlobalKey<FormState>();
    final TextEditingController _countrycontroller = TextEditingController();
    final TextEditingController _phoneController = TextEditingController();

  @override
  void initState(){
    super.initState();
    _countrycontroller;
    _phoneController;

  }

  @override
  void dispose(){
    _countrycontroller.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                  colors: [
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.55),
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(1.0),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
              body: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 20.0),
                    child: Text(
                      'Register',
                      style: loginBigTextStyle,
                    ),
                  ),
                  SizedBox(height: 10.0),

                  // Padding(
                  //   padding: EdgeInsets.only(left: 20.0),
                  //   child: Text(
                  //     'Create account',
                  //     style: whiteSmallLoginTextStyle,
                  //   ),
                  // ),
                  // SizedBox(height: 30.0),

                  Form(
                      child: Column(
                        key: _formKey,
                        children: [

                          Padding(
                            padding: EdgeInsets.only(right: 20.0, left: 20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200].withOpacity(0.3),
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: TextField(
                                style: inputLoginTextStyle,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 20.0),
                                  hintText: 'Country',
                                  hintStyle: inputLoginTextStyle,
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.text,
                                controller: _countrycontroller,
                                onSubmitted: (String value){
                                  if(value == null || value.isEmpty){
                                    return "Please enter your country";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),

                          Padding(
                            padding: EdgeInsets.only(right: 20.0, left: 20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200].withOpacity(0.3),
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: TextField(
                                style: inputLoginTextStyle,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 20.0),
                                  hintText: 'Phone Number',
                                  hintStyle: inputLoginTextStyle,
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.phone,
                                controller: _phoneController,
                                onSubmitted: (String value){
                                  if(value == null || value.isEmpty){
                                    return "Please enter phone number";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),

                          SizedBox(height: 5.0,),

                          Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    "4 digit pin to confirm your number will",
                                    style: whiteSmallTextStyle,
                                  ),

                                  Text(
                                    "be sent.Standard carrier charges may apply",
                                    style: whiteSmallTextStyle,
                                  )
                                ],
                              ),
                            )
                          ),

                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(30.0),
                              // onTap: (){
                              //   if(_formKey.currentState.validate()){
                              //     _formKey.currentState.save();
                              //     Navigator.push(
                              //         context,
                              //       MaterialPageRoute(builder: (context) => OTPScreen()),
                              //         );
                              //   }
                              // },
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        duration: Duration(milliseconds: 600),
                                        type: PageTransitionType.fade,
                                        child: OTPScreen()
                                        // child: BottomBar()
                                    )
                                );
                              },
                              child: Container(
                                height: 50.0,
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.bottomRight,
                                    stops: [0.1, 0.5, 0.9],
                                    colors: [
                                      Colors.teal[300].withOpacity(0.8),
                                      Colors.teal[500].withOpacity(0.8),
                                      Colors.teal[800].withOpacity(0.8),
                                    ],
                                  ),
                                ),
                                child: Text(
                                  'Continue',
                                  style: inputLoginTextStyle,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 20,),

                          Divider(
                            color: primaryColor,
                            thickness: 3,
                            height: 3,
                          ),

                          SizedBox(height: 10,),

                          Container(
                           child: Column(
                             children: [
                               Text(
                                 "Sign up with",
                                 style: whiteSmallLoginTextStyle,
                               ),

                               SizedBox(height: 10,),

                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Image.asset(
                                       "assets/facebook.png",
                                     height: 22,
                                     fit: BoxFit.fitHeight,
                                   ),
                                   SizedBox(width: 15,),

                                   Image.asset(
                                     "assets/google.png",
                                     height: 22,
                                     fit: BoxFit.fitHeight,
                                   )

                                 ],
                               ),

                               SizedBox(height: 20,),

                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text(
                                     "Already have an account?",
                                     style: whiteSmallLoginTextStyle,

                                   ),
                                   heightSpace,

                                   TextButton(
                                     child: Text("Sign In"),

                                     style: TextButton.styleFrom(
                                         textStyle: TextStyle(
                                           color: primaryColor,
                                           fontWeight: FontWeight.bold,
                                         )
                                     ),

                                     onPressed: (){
                                       Navigator.push(
                                         context,
                                         MaterialPageRoute(builder: (context) => Login()),
                                       );
                                     },
                                   )
                                 ],
                               ),
                             ],
                           ),
                          ),











                        ],
                      )
                  )





                  // Padding(
                  //   padding: EdgeInsets.only(right: 20.0, left: 20.0),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.grey[200].withOpacity(0.3),
                  //       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  //     ),
                  //     child: TextField(
                  //       style: inputLoginTextStyle,
                  //       decoration: InputDecoration(
                  //         contentPadding: EdgeInsets.only(left: 20.0),
                  //         hintText: 'Email',
                  //         hintStyle: inputLoginTextStyle,
                  //         border: InputBorder.none,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 20.0),

                  // Padding(
                  //   padding: EdgeInsets.only(right: 20.0, left: 20.0),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.grey[200].withOpacity(0.3),
                  //       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  //     ),
                  //     child: TextField(
                  //       style: inputLoginTextStyle,
                  //       obscureText: true,
                  //       decoration: InputDecoration(
                  //         contentPadding: EdgeInsets.only(left: 20.0),
                  //         hintText: 'Password',
                  //         hintStyle: inputLoginTextStyle,
                  //         border: InputBorder.none,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 20.0),
                  // Padding(
                  //   padding: EdgeInsets.only(right: 20.0, left: 20.0),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.grey[200].withOpacity(0.3),
                  //       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  //     ),
                  //     child: TextField(
                  //       style: inputLoginTextStyle,
                  //       obscureText: true,
                  //       decoration: InputDecoration(
                  //         contentPadding: EdgeInsets.only(left: 20.0),
                  //         hintText: 'Confirm Password',
                  //         hintStyle: inputLoginTextStyle,
                  //         border: InputBorder.none,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 40.0),

                ],
              ),
            ),
          ),
        //  end of all textfields
        ],
      ),
    );
  }
}
