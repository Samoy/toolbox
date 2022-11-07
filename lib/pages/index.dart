import 'package:flutter/material.dart';
import 'package:toolbox/pages/home/index.dart';
import 'package:toolbox/pages/image/index.dart';
import 'package:toolbox/pages/text/index.dart';
import 'package:toolbox/pages/video/index.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key, required}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexState();
}

class _IndexState extends State<IndexPage> {
  int _selectedIndex = 0;
  final List<TabModel> _tabList = [
    const TabModel(
      icon: Icon(Icons.home_outlined),
      selectedIcon: Icon(Icons.home),
      title: "首页",
      widget: HomePage(),
    ),
    const TabModel(
      icon: Icon(Icons.text_fields_outlined),
      selectedIcon: Icon(Icons.text_fields),
      title: "文本",
      widget: TextPage(),
    ),
    const TabModel(
      icon: Icon(Icons.image_outlined),
      selectedIcon: Icon(Icons.image),
      title: "图片",
      widget: ImagePage(),
    ),
    const TabModel(
      icon: Icon(Icons.video_file_outlined),
      selectedIcon: Icon(Icons.video_file),
      title: "视频",
      widget: VideoPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    TabModel selectedMenu = _tabList[_selectedIndex];
    return SafeArea(
      top: false,
      right: false,
      bottom: false,
      child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
        if (orientation == Orientation.portrait) {
          return Scaffold(
            body: selectedMenu.widget,
            bottomNavigationBar: BottomNavigationBar(
              items: _tabList
                  .map((e) => BottomNavigationBarItem(
                      icon: e.icon, activeIcon: e.selectedIcon, label: e.title))
                  .toList(),
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          );
        }
        return Scaffold(
          body: Row(
            children: <Widget>[
              NavigationRail(
                selectedIndex: _selectedIndex,
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                labelType: NavigationRailLabelType.all,
                destinations: _tabList
                    .map(
                      (e) => NavigationRailDestination(
                        icon: e.icon,
                        selectedIcon: e.selectedIcon,
                        label: Text(e.title),
                      ),
                    )
                    .toList(),
              ),
              Expanded(
                child: selectedMenu.widget,
              ),
            ],
          ),
        );
      }),
    );
  }
}

class TabModel {
  const TabModel({
    required this.icon,
    required this.title,
    required this.widget,
    this.selectedIcon,
  });

  final Icon icon;
  final String title;
  final Widget widget;
  final Icon? selectedIcon;
}
