// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Menu extends _Menu with RealmEntity, RealmObjectBase, RealmObject {
  Menu(
    String key,
    String name,
    String path,
    bool valid,
    int menuType, {
    String? icon,
    DateTime? lastClick,
  }) {
    RealmObjectBase.set(this, 'key', key);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'path', path);
    RealmObjectBase.set(this, 'valid', valid);
    RealmObjectBase.set(this, 'menuType', menuType);
    RealmObjectBase.set(this, 'icon', icon);
    RealmObjectBase.set(this, 'lastClick', lastClick);
  }

  Menu._();

  @override
  String get key => RealmObjectBase.get<String>(this, 'key') as String;
  @override
  set key(String value) => RealmObjectBase.set(this, 'key', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get path => RealmObjectBase.get<String>(this, 'path') as String;
  @override
  set path(String value) => RealmObjectBase.set(this, 'path', value);

  @override
  bool get valid => RealmObjectBase.get<bool>(this, 'valid') as bool;
  @override
  set valid(bool value) => RealmObjectBase.set(this, 'valid', value);

  @override
  int get menuType => RealmObjectBase.get<int>(this, 'menuType') as int;
  @override
  set menuType(int value) => RealmObjectBase.set(this, 'menuType', value);

  @override
  String? get icon => RealmObjectBase.get<String>(this, 'icon') as String?;
  @override
  set icon(String? value) => RealmObjectBase.set(this, 'icon', value);

  @override
  DateTime? get lastClick =>
      RealmObjectBase.get<DateTime>(this, 'lastClick') as DateTime?;
  @override
  set lastClick(DateTime? value) =>
      RealmObjectBase.set(this, 'lastClick', value);

  @override
  Stream<RealmObjectChanges<Menu>> get changes =>
      RealmObjectBase.getChanges<Menu>(this);

  @override
  Menu freeze() => RealmObjectBase.freezeObject<Menu>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Menu._);
    return const SchemaObject(ObjectType.realmObject, Menu, 'Menu', [
      SchemaProperty('key', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('path', RealmPropertyType.string),
      SchemaProperty('valid', RealmPropertyType.bool),
      SchemaProperty('menuType', RealmPropertyType.int),
      SchemaProperty('icon', RealmPropertyType.string, optional: true),
      SchemaProperty('lastClick', RealmPropertyType.timestamp, optional: true),
    ]);
  }
}
