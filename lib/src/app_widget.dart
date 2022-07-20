import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'shared/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: Provider.of<AppRouter>(context).delegate(),
      routeInformationParser:
          Provider.of<AppRouter>(context).defaultRouteParser(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
