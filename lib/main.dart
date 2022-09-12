import 'package:flutter/material.dart';
import 'injection_container.dart' as di;

import 'src/app_widget.dart';
import 'src/infrastructure/core/sembast_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  await di.getIt<SembastDatabase>().init();

  runApp(
    const AppWidget(),
  );
}
