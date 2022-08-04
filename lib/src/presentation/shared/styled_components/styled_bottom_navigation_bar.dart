import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/styles.dart';

class StyledBottomNavigationBar extends StatelessWidget {
  const StyledBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: const [
        StyledBottomAppBarIcons(),
        StyledBAB(),
      ],
    );
  }
}

class StyledBAB extends StatelessWidget {
  const StyledBAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.m),
      child: Material(
        elevation: 8,
        shadowColor: const Color(0xFF6A6DB0),
        color: const Color(0xFF7C79CA),
        borderRadius: BorderRadius.circular(22.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(22.0),
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(17.0),
            child: FaIcon(FontAwesomeIcons.plus, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class StyledBottomAppBarIcons extends StatelessWidget {
  const StyledBottomAppBarIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(32.0)),
      child: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Insets.l - 2.0,
            horizontal: Insets.m,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: const [
              FaIcon(FontAwesomeIcons.list, size: 22),
              FaIcon(FontAwesomeIcons.stopwatch,
                  size: 22, color: Color(0xFFC3C6D1)),
              SizedBox(width: 32),
              FaIcon(FontAwesomeIcons.chartBar,
                  size: 22, color: Color(0xFFC3C6D1)),
              FaIcon(FontAwesomeIcons.gear, size: 22, color: Color(0xFFC3C6D1)),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavigationBarItem extends StatelessWidget {
  const BottomNavigationBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}