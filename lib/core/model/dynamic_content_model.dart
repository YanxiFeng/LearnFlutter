import 'package:flutter/material.dart';

class HYDynamicContentModel {
  HYDynamicTitleModel titleModel;
  HYDynamicTitleModel descriptionModel;
  HYDynamicImageModel imageModel;

  HYDynamicContentModel(
      {required this.titleModel,
      required this.descriptionModel,
      required this.imageModel});
}

class HYDynamicTitleModel {
  FontStyle fontStyle;
  HYAction action;
  String content;

  HYDynamicTitleModel(
      {required this.fontStyle, required this.action, required this.content});
}

class FontStyle {
  TextStyle style;
  String color;
  String bgColor;
  int lines;

  FontStyle(
      {required this.style,
      required this.color,
      required this.bgColor,
      required this.lines});
}

class HYDynamicImageModel {
  String url;
  List<int> radius;
  String scale;
  HYAction action;

  HYDynamicImageModel(
      {required this.url,
      required this.radius,
      required this.scale,
      required this.action});
}

class HYAction {
  String type;
  String index;
  String content;

  HYAction({required this.type, required this.index, required this.content});
}
