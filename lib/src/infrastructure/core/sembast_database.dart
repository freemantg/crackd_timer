import 'package:crackd_timer/src/infrastructure/core/database_wrapper.dart';
import 'package:path/path.dart';
import 'package:sembast/sembast.dart';

import 'path_provider_wrapper.dart';

class SembastDatabase {
  final Database database;
  final PathProviderWrapper pathProviderWrapper;

  SembastDatabase(this.database, this.pathProviderWrapper);

  static Future<SembastDatabase> init(
      DatabaseFactoryWrapper databaseFactoryWrapper,
      PathProviderWrapper pathProviderWrapper) async {
    final appPath =
        await pathProviderWrapper.getApplicationDocumentsDirectory();
    appPath.createSync(recursive: true);
    final dbPath = join(appPath.path, 'db.sembast');
    final database = await databaseFactoryWrapper.openDatabase(dbPath);
    return SembastDatabase(database, pathProviderWrapper);
  }
}
