// import 'package:easternapp/Widgets/BottomNavModel.dart';
// import 'package:easternapp/app/constants/constants.dart';
// import 'package:easternapp/app/utils/CommonWidgets.dart';
// import 'package:easternapp/app/utils/math_utils.dart';
// import 'package:easternapp/screens/AccountPage.dart';
// import 'package:easternapp/screens/DesignersPage.dart';
// import 'package:easternapp/screens/HomePage.dart';
// import 'package:easternapp/screens/ModPage.dart';
// import 'package:easternapp/screens/ShopPage.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/services.dart';

// class Dashboard extends StatefulWidget {

//   static const route = "Dashboard";

//   @override
//   _DashboardState createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   List<BottomNavModel> model;
//   int _currentIndex = 0;
//   List<Widget> _children;

//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   GlobalKey keyButton = GlobalKey();
//   int bottom_index = 0;

//   @override
//   void initState() {
//     super.initState();
//     model = BottomNavModel.getBottomBar();
//     for (var j = 0; j < model.length; j++) {
//       if (model[j].type == widget.type) {
//         model[j].isSelected = true;
//         _currentIndex = j;
//       } else {
//         model[j].isSelected = false;
//       }
//     }

//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       print('dashboard context');
//     });

//     _children = [
//       HomeScreen(),
//       DesignerSCreen(),
//       AccountScreen(),
//       ShopScreen(),
//       ModScreen(),
//     ];

//     if (_currentIndex != 4) {
//       setState(() {
//         for (var j = 0; j < model.length; j++) {
//           if (model[j].type == 4) {
//             _currentIndex = j;
//             model[j].isSelected = true;
//           } else {
//             model[j].isSelected = false;
//           }
//         }
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Container(
//         color: Colors.blue,
//         child: Stack(
//           children: <Widget>[
//             Container(
//               margin: EdgeInsets.only(bottom: getSize(60)),
//               child: _children[_currentIndex],
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 decoration: BoxDecoration(
//                   boxShadow: getBoxShadow(context),
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(getSize(20)),
//                       topRight: Radius.circular(getSize(20))),
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Container(
//                       height: getSize(62),
//                       margin: EdgeInsets.all(getSize(7)),
//                       padding: EdgeInsets.all(getSize(10)),
//                       decoration: new BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius:
//                             BorderRadius.all(Radius.circular(getSize(16))),
//                       ),
//                       child: GridView.builder(
//                           shrinkWrap: true,
//                           physics: NeverScrollableScrollPhysics(),
//                           itemCount: model.length,
//                           padding: EdgeInsets.all(getSize(0)),
//                           gridDelegate:
//                               new SliverGridDelegateWithFixedCrossAxisCount(
//                                   crossAxisCount: 4),
//                           itemBuilder: (BuildContext context, int index) {
//                             return InkWell(
//                               onTap: () {
//                                 setState(() {
//                                   for (var i in model) {
//                                     i.isSelected = false;

//                                     _currentIndex = index;
//                                     model[index].isSelected = true;
//                                   }
//                                 });
//                               },
//                               child: Column(
//                                 children: <Widget>[
//                                   Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceEvenly,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: <Widget>[
//                                         Container(
//                                           padding: EdgeInsets.only(
//                                             bottom: getSize(5),
//                                             top: getSize(8),
//                                           ),
//                                           child: Image.asset(model[index].image,
//                                               height: getSize(20),
//                                               width: getSize(20),
//                                               color: model[index].isSelected
//                                                   ? Colors.blue
//                                                   : Colors.white),
//                                         ),
//                                       ]),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(
//                                           getSize(2.5),
//                                         ),
//                                       ),
//                                       color: (model[index].isSelected)
//                                           ? Colors.blue
//                                           : Colors.transparent,
//                                     ),
//                                     width: getSize(5),
//                                     height: getSize(5),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           }),
//                     ),
//                     SizedBox(
//                         height: MathUtilities.safeAreaBottomHeight(context))
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
