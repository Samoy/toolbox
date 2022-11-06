import 'package:realm/realm.dart';

part 'menu.g.dart';

@RealmModel()
class _Menu {
  @PrimaryKey()
  late String key;
  late String name;
  late String path;
  late bool valid;
  late int menuType;
  String? icon;
  DateTime? lastClick;
}
