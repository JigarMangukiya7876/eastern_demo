import 'package:easternapp/screens/AccountPage.dart';
import 'package:easternapp/screens/DesignersPage.dart';
import 'package:easternapp/screens/HomePage.dart';
import 'package:easternapp/screens/ModPage.dart';
import 'package:easternapp/screens/ShopPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 3;

  List<Widget> _widgets = <Widget>[
    HomePage(),
    ModPage(),
    DesignerPage(),
    ShopPage(),
    AccountPage()
  ];

  PageController pageController = PageController();

  void _onItemTapped(int index) {
    pageController.jumpToPage(index);
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: _onPageChanged,
          children: _widgets,
          physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 8,
      fixedColor: Colors.black87,
      iconSize: 32,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Padding(padding: EdgeInsets.all(4), child: Icon(Icons.home)),
          title: Text(
            'HOME',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        BottomNavigationBarItem(
          icon: Padding(padding: EdgeInsets.all(4), child: Icon(Icons.book)),
          title: Text(
            'THE MOD',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        BottomNavigationBarItem(
          icon: Padding(
              padding: EdgeInsets.all(4), child: Icon(Icons.description)),
          title: Text(
            'DESIGNERS',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        BottomNavigationBarItem(
          icon: Padding(
              padding: EdgeInsets.all(4), child: Icon(Icons.restaurant_menu)),
          title: Text(
            'SHOP',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        BottomNavigationBarItem(
          icon: Padding(padding: EdgeInsets.all(4), child: Icon(Icons.person)),
          title: Text(
            'MY ACCOUNT',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
