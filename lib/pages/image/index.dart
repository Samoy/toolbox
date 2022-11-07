import 'package:flutter/material.dart';

import 'package:toolbox/enum/menu_type.dart';
import 'package:toolbox/widgets/menu_list.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return const MenuListWidget(
      title: "图片工具",
      menuType: MenuType.image,
    );
  }
}
