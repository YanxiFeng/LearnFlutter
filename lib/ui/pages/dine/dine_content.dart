import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learnflutter/generated/l10n.dart';
import 'package:learnflutter/main.dart';
import 'package:learnflutter/ui/pages/dynamic/dynamic.dart';
import 'package:learnflutter/ui/pages/experiment/ios_learner.dart';
import 'package:learnflutter/ui/pages/native/battery.dart';

class HYDineContent extends StatefulWidget {
  const HYDineContent({Key? key}) : super(key: key);

  @override
  _HYDineContentState createState() => _HYDineContentState();
}

class _HYDineContentState extends State<HYDineContent> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();
  String _message = "";

  @override
  void initState() {
    super.initState();

    //监听event bus事件
    eventBus.on().listen((event) {
      setState(() {
        _message = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(S.of(context).dine),
          Text(_message),
          _imageFile == null
              ? Text(S.of(context).selectImage)
              : Image.file(_imageFile!),
          ElevatedButton(
            onPressed: () {
              _selectImage();
            },
            child: Text(S.of(context).selectImage),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(HYDynamicScreen.routeName);
            },
            child: Text("动态化页面"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(HYBatteryScreen.routeName);
            },
            child: Text("Native-电池"),
          ),
        ],
      ),
    );
  }

  void _selectImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = pickedFile as File?;
    });
  }
}
