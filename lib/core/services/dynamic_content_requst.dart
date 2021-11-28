import 'package:flutter/material.dart';
import 'package:learnflutter/core/model/dynamic_content_model.dart';

class DynamicContentTool {
  static HYDynamicContentModel getDynamicContent() {
    Color color = Color(0xff000000);
    TextStyle style =
        TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.bold);
    FontStyle fontStyle =
        FontStyle(style: style, color: "color", bgColor: "bgColor", lines: 2);
    String url =
        "https://img1.baidu.com/it/u=1719063513,2559625643&fm=26&fmt=auto";
    String content = "测试一点数据";

    HYAction action = HYAction(type: "type", index: "index", content: content);

    // title model
    HYDynamicTitleModel titleModel = HYDynamicTitleModel(
        fontStyle: fontStyle, action: action, content: content);
    // description model
    HYDynamicTitleModel descriptionModel = HYDynamicTitleModel(
        fontStyle: fontStyle, action: action, content: content);
    // image model
    HYDynamicImageModel imageModel =
        HYDynamicImageModel(url: url, radius: [], scale: "2", action: action);
    // comebine to one
    HYDynamicContentModel contentModel = HYDynamicContentModel(
        titleModel: titleModel,
        descriptionModel: descriptionModel,
        imageModel: imageModel);

    return contentModel;
  }
}
