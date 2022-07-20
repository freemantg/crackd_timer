import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:robot_timer/src/shared/app_router.gr.dart';

import 'src/app_widget.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppRouter(),
      child: const AppWidget(),
    ),
  );
}
