import 'package:flutter/material.dart';
import 'package:learnflutter/core/model/dynamic_content_model.dart';
import 'package:learnflutter/core/services/dynamic_content_requst.dart';

class HYDynamicContent extends StatefulWidget {
  const HYDynamicContent({Key? key}) : super(key: key);

  @override
  _HYDynamicContentState createState() => _HYDynamicContentState();
}

class _HYDynamicContentState extends State<HYDynamicContent> {
  // mock : get data from back-end
  HYDynamicContentModel contentModel = DynamicContentTool.getDynamicContent();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // title
          Text(contentModel.titleModel.content,
              style: contentModel.titleModel.fontStyle.style),
          // if no description, set space here
          contentModel.descriptionModel.content.length > 0
              ? Text(contentModel.descriptionModel.content,
                  style: contentModel.descriptionModel.fontStyle.style)
              : Spacer(),
          // image
          Image.network(contentModel.imageModel.url),
        ],
      ),
    );
  }
}
