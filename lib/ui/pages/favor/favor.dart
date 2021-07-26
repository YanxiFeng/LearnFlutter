import 'package:flutter/material.dart';
import 'package:learnflutter/ui/pages/favor/favor_content.dart';

class HYFavorScreen extends StatelessWidget {
  const HYFavorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("收藏"),
      ),
      body: HYFavorContent(),
    );
  }
}
