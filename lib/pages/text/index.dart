import 'package:flutter/material.dart';
import 'package:toolbox/enum/menu_type.dart';
import 'package:toolbox/widgets/menu_list.dart';

class TextPage extends StatefulWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return const MenuListWidget(
      menuType: MenuType.text,
      title: "文本工具",
    );
  }
}
