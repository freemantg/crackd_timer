import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase extends StateNotifier<Database?> {
  SembastDatabase() : super(null) {
    init;
  }

  Future<void> init() async {
    //Get a platform-specific directory where persistent app data can be stored
    final dbDirectory = await getApplicationDocumentsDirectory();
    dbDirectory.create(recursive: true);
    //path with the form: /platform-specific-directory/db.sembast
    final dbPath = join(dbDirectory.path, 'db.sembast');
    state = await databaseFactoryIo.openDatabase(dbPath);
  }
}
