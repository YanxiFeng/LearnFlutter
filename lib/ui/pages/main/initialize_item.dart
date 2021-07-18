import 'package:flutter/material.dart';
import 'package:learnflutter/ui/pages/favor/favor.dart';
import 'package:learnflutter/ui/pages/home/home.dart';

final List<Widget> pages = [HYHomeScreen(), HYFavorScreen()];

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
  BottomNavigationBarItem(icon: Icon(Icons.star), label: "收藏")
];
