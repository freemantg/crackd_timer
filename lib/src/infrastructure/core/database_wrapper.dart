import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class DatabaseFactoryWrapper {
  Future<Database> openDatabase(String path) {
    return databaseFactoryIo.openDatabase(path);
  }
}
