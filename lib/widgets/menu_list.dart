import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:toolbox/common/dimens.dart';
import 'package:toolbox/common/menus.dart';
import 'package:toolbox/enum/menu_type.dart';
import 'package:toolbox/model/menu.dart';

class MenuListWidget extends StatefulWidget {
  final MenuType menuType;
  final String title;
  final Widget? banner;

  const MenuListWidget(
      {Key? key, required this.title, required this.menuType, this.banner})
      : super(key: key);

  @override
  State<MenuListWidget> createState() => _MenuListWidgetState();
}

class _MenuListWidgetState extends State<MenuListWidget> {
  List<Menu> _menuList = [];
  bool _centerTitle = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      _menuList = menus
          .where((element) => element.menuType == widget.menuType.index)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 160.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: widget.banner ?? const FlutterLogo(),
              title: Text(widget.title),
              titlePadding: const EdgeInsets.all(normalPadding),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                var menu = _menuList[index];
                return ListTile(
                  title: Text(menu.name),
                  onTap: () {
                    debugPrint("当前菜单:${menu.name}");
                  },
                );
              },
              childCount: _menuList.length,
            ),
          ),
        ],
      ),
    );
  }
}
