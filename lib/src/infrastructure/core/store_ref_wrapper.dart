import 'package:sembast/sembast.dart';

class StoreRefWrapper {
  final StoreRef _storeRef;

  StoreRefWrapper(this._storeRef);

  RecordRef record(dynamic key) {
    return _storeRef.record(key);
  }

  Future delete(Database database, {Finder? finder}) {
    return _storeRef.delete(database, finder: finder);
  }

  Future update(Database database, dynamic values, {Finder? finder}) {
    return _storeRef.update(database, values, finder: finder);
  }

  Future put(Database database, dynamic value, {dynamic key}) {
    return _storeRef.record(key).put(database, value);
  }

  QueryRef query({Finder? finder}) {
    return _storeRef.query(finder: finder);
  }
}
