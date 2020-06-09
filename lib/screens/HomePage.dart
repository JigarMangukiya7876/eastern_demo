import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
        ),
        body: Column(
          children: <Widget>[
            Padding(
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
            ),
          ],
        ),
      ),
    );  
  }
}
