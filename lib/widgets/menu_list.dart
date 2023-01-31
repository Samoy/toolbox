import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  @override
  void initState() {
    super.initState();
    setState(() {
      _menuList = globalMenus
          .where((element) => element.menuType == widget.menuType.index)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar.medium(
            title: Text(widget.title),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                var menu = _menuList[index];
                return ListTile(
                  leading: menu.icon != null
                      ? SvgPicture.asset(
                          menu.icon!,
                          width: 24,
                          height: 24,
                        )
                      : const Icon(
                          Icons.menu,
                        ),
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
