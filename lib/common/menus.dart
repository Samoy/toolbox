import 'package:toolbox/enum/menu_type.dart';
import 'package:toolbox/model/menu.dart';

// 翻转文本
const keyReverseText = "reverse_text";
// 获取照片Exif信息
const keyGetImageExif = "get_image_exif";
// 编辑照片
const keyEditImage = "edit_image";
// 视频转码
const keyFormatVideo = "format_video";

final List<Menu> menus = [
  // 文本类
  Menu(keyReverseText, "反转文本", "/text/reverse", true, MenuType.text.index),
  // 图片类
  Menu(keyGetImageExif, "图片元数据", "/image/exif", true, MenuType.image.index),
  Menu(keyGetImageExif, "图片编辑", "/image/edit", true, MenuType.image.index),
  // 视频类
  Menu(keyFormatVideo, "视频转码", "/video/format", true, MenuType.video.index),
];
