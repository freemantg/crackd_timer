import 'package:flutter/material.dart';
import 'package:robot_timer/src/presentation/home/widgets/crackd_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: const Center(
        child: CrackdLogo(size: 48),
      ),
    );
  }
}
