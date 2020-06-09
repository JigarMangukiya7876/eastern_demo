import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("Shop"),
          subtitle: Text("$index"),
        );
      },
    );
  }
}
