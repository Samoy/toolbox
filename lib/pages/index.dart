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
      color: Color(0xFFab65ee),
      icon: Icons.home_outlined,
      selectedIcon: Icons.home,
      title: "Home",
      widget: HomePage(),
    ),
    const TabModel(
      color: Color(0xFFfeb500),
      icon: Icons.text_fields_outlined,
      selectedIcon: Icons.text_fields,
      title: "Text",
      widget: TextPage(),
    ),
    const TabModel(
      color: Color(0xFFf86b96),
      icon: Icons.image_outlined,
      selectedIcon: Icons.image,
      title: "Image",
      widget: ImagePage(),
    ),
    const TabModel(
      color: Color(0xFF50ccf8),
      icon: Icons.video_file_outlined,
      selectedIcon: Icons.video_file,
      title: "Video",
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
            bottomNavigationBar: NavigationBar(
              selectedIndex: _selectedIndex,
              destinations: _tabList
                  .map(
                    (e) => NavigationDestination(
                      icon: Icon(
                        e.icon,
                        color: e.color,
                      ),
                      selectedIcon: Icon(
                        e.selectedIcon,
                        color: e.color,
                      ),
                      label: e.title,
                    ),
                  )
                  .toList(),
              onDestinationSelected: (index) {
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
                        icon: Icon(
                          e.icon,
                          color: e.color,
                        ),
                        selectedIcon: Icon(
                          e.selectedIcon,
                          color: e.color,
                        ),
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
    this.color,
  });

  final IconData icon;
  final String title;
  final Widget widget;
  final IconData? selectedIcon;
  final Color? color;
}
