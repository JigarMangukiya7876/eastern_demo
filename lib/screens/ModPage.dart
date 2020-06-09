import 'package:flutter/material.dart';

class ModPage extends StatefulWidget {
  @override
  _ModPageState createState() => _ModPageState();
}

class _ModPageState extends State<ModPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("Mod"),
          subtitle: Text("$index"),
        );
      },
    );
  }
}
