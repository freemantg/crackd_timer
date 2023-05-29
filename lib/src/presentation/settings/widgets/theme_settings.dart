import 'package:crackd_timer/src/shared/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/settings/theme_cubit/theme_cubit.dart';
import '../../../shared/app_themes.dart';
import '../../../shared/styles.dart';
import '../../../shared/text_styles.dart';
import '../../shared/styled_components/styled_components.dart';

class ThemeSettings extends StatelessWidget {
  const ThemeSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StyledTitleAndSubtitle(
          title: 'Appearance',
          subTitle: 'Defaults to system settings',
        ),
        const HSpace(size: Insets.l),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Dark Mode',
              style: TextStyles.title1,
            ),
            const _StyledCheckBox(),
          ],
        ),
        const HSpace(size: Insets.xl),
        Text('Theme', style: TextStyles.title1),
        const HSpace(size: Insets.l),
        ...ThemeType.values.map((t) => _ThemeTile(themeType: t)),
      ],
    );
  }
}

class _ThemeTile extends StatelessWidget {
  const _ThemeTile({
    Key? key,
    required this.themeType,
  }) : super(key: key);

  final ThemeType themeType;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<ThemeCubit, AppTheme>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(themeType.themeName),
                GestureDetector(
                  onTap: () =>
                      context.read<ThemeCubit>().updateTheme(themeType),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 24,
                      minWidth: 24,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: state.themeType == themeType
                            ? theme.cardColor
                            : theme.disabledColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const HSpace(size: Insets.xl),
          ],
        );
      },
    );
  }
}

class _StyledCheckBox extends StatelessWidget {
  const _StyledCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ThemeCubit, AppTheme>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => context.read<ThemeCubit>().toggleDarkMode(),
          child: AnimatedContainer(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              color: state.isDark ? theme.cardColor : theme.disabledColor,
              borderRadius: BorderRadius.circular(Insets.sm),
            ),
            duration: kThemeAnimationDuration,
          ),
        );
      },
    );
  }
}
