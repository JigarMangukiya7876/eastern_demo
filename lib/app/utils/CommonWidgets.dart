import 'package:easternapp/app/utils/math_utils.dart';
import 'package:flutter/material.dart';

List<BoxShadow> getBoxShadow(BuildContext context) {
  return [
    BoxShadow(
        color: Colors.grey, blurRadius: getSize(13), spreadRadius: getSize(5))
  ];
}
