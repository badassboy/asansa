import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travel_pro/constant/constant.dart';
import 'package:travel_pro/pages/login_signup/login.dart';
import 'package:travel_pro/pages/login_signup/register.dart';
import 'package:travel_pro/pages/walkthrough/walkthrough.dart';
import 'package:travel_pro/pages/splashScreen.dart';
import 'package:carousel_slider/carousel_slider.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  CarouselController carouselController = CarouselController();
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  List<String> captionList = [
    'hello',
    "ama",
    "kofi",
    "ywa"
  ];

  int index = 0;





  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 10),
        () => Navigator.push(
            context,
            PageTransition(
                duration: Duration(milliseconds: 600),
                type: PageTransitionType.fade,
                child: Register()))
    );
  }



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(

        body: Builder(

        builder: (context){
          height: MediaQuery.of(context).size.height;
          return Stack(
            children: [
          CarouselSlider(
            carouselController: carouselController,
          items: imgList
              .map((item) => Container(
            child: Center(
              child: Image.network(
                item,
                fit: BoxFit.cover,
                height: height,
              ),
            ),
          )).toList(),

          options: CarouselOptions(
          height: height,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          autoPlay: true
          ),
          ),

              // SizedBox(height: 250,),

              Padding(
                padding: EdgeInsets.all(fixPadding),
                // alignment: Alignment.bottomCenter,

                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Asansa",
                        style: splashBigTextStyle,
                      ),

                      //  Text(
                      //
                      //
                      //
                      // ),

                      SizedBox(height: 300,),

                      ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Register()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                          ),
                          child: Text(
                            "SignUp",
                            style: TextStyle(

                            ),
                          )
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style:whiteSmallLoginTextStyle,
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
                      )

                    ],
                  ),
                ),


              ),



            ],
          );


        },
      ),
    );




      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover),
      // ),


      // child: Stack(
      //   children: <Widget>[

          // Positioned(
          //   top: 0.0,
          //   left: 0.0,
          //   child: Container(
          //     width: width,
          //     height: height,
          //     decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //         begin: Alignment.topCenter,
          //         end: Alignment.bottomCenter,
          //         stops: [0.1, 0.3, 0.5, 0.7, 0.9],
          //         colors: [
          //           Colors.black.withOpacity(0.4),
          //           Colors.black.withOpacity(0.55),
          //           Colors.black.withOpacity(0.7),
          //           Colors.black.withOpacity(0.8),
          //           Colors.black.withOpacity(1.0),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

          // Container(
          //   child: Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Text("hello"),
          //         Text("hi")
          //       ],
          //     ),
          //   ),
          //
          // ),
          //
          // Container(
          //   child: Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Text("ama"),
          //         Text("is going to school")
          //       ],
          //     ),
          //   ),
          //
          // ),




          // Positioned(
          //   child: Scaffold(
          //     backgroundColor: Colors.transparent,
          //     body: Padding(
          //       padding: EdgeInsets.all(fixPadding),
          //       child: Center(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Text(
          //               'Emmmanuel',
          //               style: splashBigTextStyle,
          //             ),
          //             heightSpace,
          //             Text(
          //               'I enjoy coding',
          //               style: whiteSmallLoginTextStyle,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

          // Positioned(
          //   child: Scaffold(
          //     backgroundColor: Colors.transparent,
          //     body: Padding(
          //       padding: EdgeInsets.all(fixPadding),
          //       child: Center(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Text(
          //               'TravelPro',
          //               style: splashBigTextStyle,
          //             ),
          //             heightSpace,
          //             Text(
          //               'Plan your trip with TravelPro',
          //               style: whiteSmallLoginTextStyle,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),




      //
      //   ],
      // ),




  }
}
