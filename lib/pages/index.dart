import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  final String title;

  const IndexPage({Key? key, required, required this.title}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexState();
}

class _IndexState extends State<IndexPage> {
  int _selectedIndex = 0;
  final List<_MenuModel> _menuList = [
    const _MenuModel(
        icon: Icon(Icons.home_outlined),
        selectedIcon: Icon(Icons.home),
        title: "首页"),
    const _MenuModel(
      icon: Icon(Icons.image_outlined),
      selectedIcon: Icon(Icons.image),
      title: "图片",
    ),
    const _MenuModel(
      icon: Icon(Icons.video_file_outlined),
      selectedIcon: Icon(Icons.video_file),
      title: "视频",
    ),
    const _MenuModel(
        icon: Icon(Icons.person_outline),
        selectedIcon: Icon(Icons.person),
        title: "我的")
  ];

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      if (orientation == Orientation.portrait) {
        return Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: Center(
              child: Text('selectedIndex: $_selectedIndex'),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: _menuList
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
            ));
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
              destinations: _menuList
                  .map((e) => NavigationRailDestination(
                      icon: e.icon,
                      selectedIcon: e.selectedIcon,
                      label: Text(e.title)))
                  .toList(),
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: Center(
                child: Text('selectedIndex: $_selectedIndex'),
              ),
            )
          ],
        ),
      );
    });
  }
}

class _MenuModel {
  const _MenuModel(
      {required this.icon, this.selectedIcon, required this.title});
  final Icon icon;
  final Icon? selectedIcon;
  final String title;
}
