import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../shared/styles.dart';
import '../text_styles.dart';


class StyledFilterSwitcher extends HookWidget {
  const StyledFilterSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var activeFilter = useState(true);
    const animationDuration = Duration(milliseconds: 300);

    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: () => activeFilter.value = !activeFilter.value,
          child: Stack(
            children: [
              Positioned.fill(
                child: AnimatedAlign(
                  duration: kThemeAnimationDuration,
                  alignment: activeFilter.value
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: AnimatedContainer(
                    width: (constraints.maxWidth / 3.5),
                    duration: animationDuration,
                    padding: const EdgeInsets.all(Insets.sm),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(Insets.sm),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Insets.m,
                        vertical: Insets.sm,
                      ),
                      child: Text(
                        '   Active ',
                        style: TextStyles.title1.copyWith(color: Colors.white),
                      ),
                    ),
                    const VSpace(size: Insets.l),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Insets.m,
                        vertical: Insets.sm,
                      ),
                      child: Text(
                        'Done  ',
                        style: TextStyles.title1.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
