import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await di.init();
  // await di.getIt<SembastDatabase>().init();

  runApp(
    const ProviderScope(child: AppWidget()),
  );
}
