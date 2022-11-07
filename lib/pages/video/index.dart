import 'package:flutter/material.dart';
import 'package:toolbox/enum/menu_type.dart';
import 'package:toolbox/widgets/menu_list.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return const MenuListWidget(
      title: "视频工具",
      menuType: MenuType.video,
    );
  }
}
