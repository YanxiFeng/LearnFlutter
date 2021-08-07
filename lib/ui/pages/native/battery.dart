import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HYBatteryScreen extends StatelessWidget {
  static const String routeName = "/battery";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("电池"),
      ),
      body: HYBatteryContent(),
    );
  }
}

class HYBatteryContent extends StatefulWidget {
  @override
  _HYBatteryContentState createState() => _HYBatteryContentState();
}

class _HYBatteryContentState extends State<HYBatteryContent> {
  static const platform = const MethodChannel("com.chope.chopebook/battery");
  int _result = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("当前电池: $_result"),
          ElevatedButton(onPressed: getBatteryInfo, child: Text("获取"))
        ],
      ),
    );
  }

  void getBatteryInfo() async {
    final int result = await platform.invokeMethod("getBatteryInfo");
    setState(() {
      _result = result;
    });
  }
}
