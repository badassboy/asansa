// body: ListView(
//   children: [
//     heightSpace,
//     heightSpace,
// Container(
//   padding: EdgeInsets.all(fixPadding * 2.0),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     crossAxisAlignment: CrossAxisAlignment.end,
//     children: [
//       Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Hello, Ellison',
//             style: smallBoldGreyTextStyle,
//           ),
//           Text(
//             'Find deals',
//             style: extraLargeBlackTextStyle,
//           ),
//         ],
//       ),
//       InkWell(
//         onTap: () {
//           Navigator.push(
//               context,
//               PageTransition(
//                   duration: Duration(milliseconds: 700),
//                   type: PageTransitionType.fade,
//                   child: Profile()));
//         },
//         child: Container(
//           width: 60.0,
//           height: 60.0,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20.0),
//             image: DecorationImage(
//               image: AssetImage('assets/user.jpg'),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),



// popularPlaces() {
//   double width = MediaQuery.of(context).size.width;
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Padding(
//         padding:
//         EdgeInsets.only(right: fixPadding * 2.0, left: fixPadding * 2.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text('Popular Places', style: blackHeadingTextStyle),
//             Text('View all', style: smallBoldGreyTextStyle),
//           ],
//         ),
//       ),
//       heightSpace,
//       heightSpace,
//       Container(
//         width: width,
//         height: 150.0,
//         child: ListView.builder(
//           itemCount: popularPlacesList.length,
//           scrollDirection: Axis.horizontal,
//           physics: BouncingScrollPhysics(),
//           itemBuilder: (context, index) {
//             final item = popularPlacesList[index];
//             return InkWell(
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     PageTransition(
//                         type: PageTransitionType.fade,
//                         duration: Duration(milliseconds: 1000),
//                         child: Place(
//                           title: item['name'],
//                           image: item['image'],
//                         )));
//               },
//               child: Container(
//                 width: 130.0,
//                 margin: (index == popularPlacesList.length - 1)
//                     ? EdgeInsets.only(
//                     left: fixPadding, right: fixPadding * 2.0)
//                     : (index == 0)
//                     ? EdgeInsets.only(left: fixPadding * 2.0)
//                     : EdgeInsets.only(left: fixPadding),
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(item['image']),
//                     fit: BoxFit.cover,
//                   ),
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 child: Container(
//                   width: 130.0,
//                   height: 150.0,
//                   padding: EdgeInsets.all(fixPadding * 1.5),
//                   alignment: Alignment.bottomLeft,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       stops: [0.1, 0.5, 0.9],
//                       colors: [
//                         blackColor.withOpacity(0.0),
//                         blackColor.withOpacity(0.3),
//                         blackColor.withOpacity(0.7),
//                       ],
//                     ),
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(item['name'], style: whiteSmallBoldTextStyle),
//                       Text(item['property'], style: whiteExtraSmallTextStyle),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     ],
//   );
// }


// popularExperiences() {
//   double width = MediaQuery.of(context).size.width;
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Padding(
//         padding:
//         EdgeInsets.only(right: fixPadding * 2.0, left: fixPadding * 2.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text('Popular Experiences', style: blackHeadingTextStyle),
//             Text('View all', style: smallBoldGreyTextStyle),
//           ],
//         ),
//       ),
//       heightSpace,
//       heightSpace,
//       Container(
//         width: width,
//         height: 290.0,
//         child: ListView.builder(
//           itemCount: popularExperiencesList.length,
//           scrollDirection: Axis.horizontal,
//           physics: BouncingScrollPhysics(),
//           itemBuilder: (context, index) {
//             final item = popularExperiencesList[index];
//             return InkWell(
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     PageTransition(
//                         type: PageTransitionType.fade,
//                         duration: Duration(milliseconds: 1000),
//                         child: Experience(
//                           title: item['name'],
//                         )));
//               },
//               child: Container(
//                 width: 130.0,
//                 margin: (index == popularExperiencesList.length - 1)
//                     ? EdgeInsets.only(
//                     left: fixPadding, right: fixPadding * 2.0)
//                     : (index == 0)
//                     ? EdgeInsets.only(left: fixPadding * 2.0)
//                     : EdgeInsets.only(left: fixPadding),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: 130.0,
//                       height: 150.0,
//                       padding: EdgeInsets.all(fixPadding * 1.5),
//                       alignment: Alignment.bottomLeft,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage(item['image']),
//                           fit: BoxFit.cover,
//                         ),
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                     ),
//                     heightSpace,
//                     Container(
//                       width: 130.0,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Icon(Icons.star,
//                                   color: Colors.lime[600], size: 16.0),
//                               SizedBox(width: 5.0),
//                               Text(item['rating'],
//                                   style: blackSmallTextStyle),
//                             ],
//                           ),
//                           SizedBox(height: 5.0),
//                           Text(
//                             item['name'],
//                             style: blackBigTextStyle,
//                             maxLines: 2,
//                           ),
//                           SizedBox(height: 5.0),
//                           Text(
//                             item['type'],
//                             style: greyNormalTextStyle,
//                           ),
//                           SizedBox(height: 5.0),
//                           Text(
//                             'From \$${item['price']}/person',
//                             style: blackSmallTextStyle,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     ],
//   );
// }



// Popular Places Start
// popularPlaces(),
// Popular Places End


// Popular Experiences Start
// popularExperiences(),
// Popular Experiences End
// heightSpace,
// Recommended Start
// Recommended(),
// Recommended End
// ],
// ),
// );