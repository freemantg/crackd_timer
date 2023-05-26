import 'package:path_provider/path_provider.dart' as path_provider;
import 'dart:io';

abstract class PathProviderWrapper {
  Future<Directory> getApplicationDocumentsDirectory();
}

class PathProviderWrapperImpl implements PathProviderWrapper {
  @override
  Future<Directory> getApplicationDocumentsDirectory() {
    return path_provider.getApplicationDocumentsDirectory();
  }
}
