import 'package:easternapp/app/constants/ImageConstant.dart';
import 'package:flutter/material.dart';

import '../app/constants/ImageConstant.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: getAppBar(context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            searchBarWidget(context),
            blackHeadLine(context),
            getStackAboveImage(context),
            getJustLandedText(context),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(right: 36),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 36),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 120,
                          height: 190,
                          padding: EdgeInsets.all(8),
                          color: Colors.grey.withOpacity(0.4),
                          child: Image.asset(imageBanner),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text('abc')
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  getAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'THE MODIST',
        style: TextStyle(color: Colors.black87, letterSpacing: 4),
      ),
      leading: Icon(
        Icons.save,
        color: Colors.black87,
      ),
      actions: <Widget>[
        Icon(
          Icons.search,
          color: Colors.black87,
        ),
        SizedBox(
          width: 20,
        ),
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(
            Icons.shopping_cart,
            color: Colors.black87,
          ),
        ),
      ],
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  getStackAboveImage(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 14),
          child: Image.asset(imageBanner),
        ),
        Padding(
          padding: EdgeInsets.only(top: 130),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 90),
            // height: 100,
            width: 240,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Is That New?',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Your style resolution start here',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SHOP NEW SEASON',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      height: 2,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  getJustLandedText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24, left: 24, top: 8),
      child: Row(children: <Widget>[
        Expanded(
          child: new Container(
              child: Divider(
            color: Colors.grey,
            height: 50,
          )),
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          "just landed",
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: new Container(
              child: Divider(
            color: Colors.grey,
            height: 50,
          )),
        ),
      ]),
    );
  }

  searchBarWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8, left: 8),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: Colors.grey.withOpacity(0.3)),
        margin: EdgeInsets.all(12),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Icon(
                Icons.search,
                color: Colors.black87,
                size: 20,
              ),
            ),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black87),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  isDense: true,
                ),
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  blackHeadLine(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Center(
        child: Text(
          'Free Same Day Delivery - Order by 12pm',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
