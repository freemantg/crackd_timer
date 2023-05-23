import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase {
  final Database database;

  SembastDatabase._(this.database);

  static Future<SembastDatabase> init() async {
    final appPath = await getApplicationDocumentsDirectory();
    appPath.createSync(recursive: true);
    final dbPath = join(appPath.path, 'db.sembast');
    final database = await databaseFactoryIo.openDatabase(dbPath);
    return SembastDatabase._(database);
  }
}
