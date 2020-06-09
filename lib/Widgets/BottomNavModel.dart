import 'package:easternapp/app/constants/ImageConstant.dart';

class BottomNavModel {
  String title;
  String image;
  bool isSelected = false;
  int type;

  BottomNavModel({this.image, this.title, this.isSelected, this.type});

  static List<BottomNavModel> getBottomBar() {
    return <BottomNavModel>[
      BottomNavModel(
        image: home,
        title: "",
        isSelected: true,
        type: 1,
      ),
      BottomNavModel(
        image: transfer,
        title: "",
        isSelected: false,
        type: 2,
      ),
      BottomNavModel(
        image: user,
        title: "",
        isSelected: false,
        type: 3,
      ),
      BottomNavModel(
        image: settings,
        title: "",
        isSelected: false,
        type: 4,
      ),
    ];
  }
}
