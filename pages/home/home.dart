import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:travel_pro/constant/constant.dart';
import 'package:travel_pro/pages/experience/experience.dart';
import 'package:travel_pro/pages/places/place.dart';
import 'package:travel_pro/pages/places/recommended.dart';
import 'package:travel_pro/pages/profile/profile.dart';
import 'package:travel_pro/site/site.dart';

class Homne extends StatefulWidget {
  @override
  _HomneState createState() => _HomneState();
}

class _HomneState extends State<Homne> {
  final popularPlacesList = [
    {
      'name': 'Miami',
      'image': 'assets/popular_places/miami.jpg',
      'property': '783 properties'
    },
    {
      'name': 'Singapore',
      'image': 'assets/popular_places/singapore.jpg',
      'property': '593 properties'
    },
    {
      'name': 'New York',
      'image': 'assets/popular_places/newyork.jpg',
      'property': '1025 properties'
    },
    {
      'name': 'Venice',
      'image': 'assets/popular_places/venice.jpg',
      'property': '290 properties'
    },
    {
      'name': 'Vietnam',
      'image': 'assets/popular_places/vietnam.jpg',
      'property': '193 properties'
    }
  ];

  final popularExperiencesList = [
    {
      'name': 'Wine not taste our passion?',
      'image': 'assets/popular_experiences/popular_experiences_1.jpg',
      'type': 'Wine tasting',
      'price': '35',
      'rating': '4.9'
    },
    {
      'name': 'Fine Wines & Ruin Bars',
      'image': 'assets/popular_experiences/popular_experiences_2.jpg',
      'type': 'Wine tasting',
      'price': '61',
      'rating': '5.0'
    },
    {
      'name': 'Budapest Boat Cruise With a Bonus Drink',
      'image': 'assets/popular_experiences/popular_experiences_3.jpg',
      'type': 'Boat ride',
      'price': '31',
      'rating': '4.81'
    },
    {
      'name': 'Budapest Historic and Cultural Tour',
      'image': 'assets/popular_experiences/popular_experiences_4.jpg',
      'type': 'History walk',
      'price': '64',
      'rating': '5.0'
    },
    {
      'name': 'Private Scenic Travel Photo Shoot',
      'image': 'assets/popular_experiences/popular_experiences_5.jpg',
      'type': 'Photo shoot',
      'price': '64',
      'rating': '4.96'
    },
    {
      'name': 'BudapEster - Walking \'n\' street food',
      'image': 'assets/popular_experiences/popular_experiences_6.jpg',
      'type': 'History walk',
      'price': '69',
      'rating': '4.98'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            // title: Text("Appbar"),
            actions: [

              Container(
                // height: MediaQuery.of(context).size.height,
                width: 300.0,
                height: 300.0,
                margin: EdgeInsets.all(10.0),
                // padding: EdgeInsets.all(fixPadding * 1.5),
                // margin: EdgeInsets.all(fixPadding * 2.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                      width: 1.0, color: greyColor.withOpacity(0.6)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search city, hotel, etc',
                    hintStyle: greyNormalTextStyle,
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        top: fixPadding * 0.78, bottom: fixPadding * 0.78),
                  ),
                ),
              ),
              //

            ],

            bottom: TabBar(
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      SizedBox(width: 5,),
                      Text("Accomodation")
                    ],
                  ),
                ),

                Tab(
                  child: Row(
                    children: [
                      Icon(Icons.tour),
                      SizedBox(width: 5,),
                      Text("Sites")
                    ],
                  ),
                )
              ],
            ),

          ),

          body: Container(
            height: 600,
              child: TabBarView(
                children: [
                  Recommended(),
                  Sites(),
                ],
              ),

            // width: MediaQuery.of(context).size.width,

          ),

          // body: TabBarView(
          //   children: [
          //    Recommended(),
          //     // Icon(Icons.directions_car),
          //     Icon(Icons.directions_bike),
          //   ],
          // ),



        ),
      ),

    );
  }
//  end of override

}








