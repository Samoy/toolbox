import 'package:realm/realm.dart';

class MyRealm<T extends RealmObject> {
  Realm? _realm;

  MyRealm(List<SchemaObject> objects) {
    var config = Configuration.local(objects);
    _realm = Realm(config);
  }

  T? add(T object) {
    return _realm?.write(() {
      return _realm?.add(object);
    });
  }

  void addAll(Iterable<T> objects) {
    return _realm?.write(() {
      return _realm?.addAll(objects);
    });
  }

  RealmResults<T>? all() {
    return _realm?.all();
  }

  RealmResults<T>? query(String query) {
    return _realm?.all<T>().query(query);
  }

  T? update(T Function() callback) {
    return _realm?.write(() {
      return callback();
    });
  }

  void delete(T object) {
    _realm?.delete(object);
  }

  void close() {
    _realm?.close();
  }
}
