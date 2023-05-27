import 'package:crackd_timer/providers.dart';
import 'package:crackd_timer/src/infrastructure/core/database_wrapper.dart';
import 'package:crackd_timer/src/infrastructure/core/path_provider_wrapper.dart';
import 'package:crackd_timer/src/infrastructure/core/sembast_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sembastDatabase = await SembastDatabase.init(
    DatabaseFactoryWrapper(),
    PathProviderWrapperImpl(),
  );

  runApp(
    ProviderScope(
      overrides: [sembastDatabaseProvider.overrideWithValue(sembastDatabase)],
      child: const AppWidget(),
    ),
  );
}
