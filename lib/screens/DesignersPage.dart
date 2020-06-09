import 'package:flutter/material.dart';

class DesignerPage extends StatefulWidget {
  @override
  _DesignerPageState createState() => _DesignerPageState();
}

class _DesignerPageState extends State<DesignerPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("Designer"),
          subtitle: Text("$index"),
        );
      },
    );
  }
}
