import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../shared/colors_list.dart';
import '../../../shared/styles.dart';
import '../../shared/styled_components/styled_app_bar.dart';
import '../../../shared/text_styles.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Insets.l,
        Insets.l,
        Insets.l,
        Insets.m,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.centerRight,
            child: StyledSaveButton(),
          ),
          Text(
            'Color',
            style: TextStyles.title1.copyWith(
              color: Colors.white.withOpacity(TextOpacity.highEmphasis),
            ),
          ),
          const HSpace(size: Insets.m),
          SizedBox(
            height: 48,
            child: ListView.builder(
              shrinkWrap: true,
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: colorsList.length,
              itemBuilder: ((context, index) {
                final color = colorsList[index];
                return _ColorTile(color: color);
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorTile extends HookWidget {
  const _ColorTile({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    var isSelected = useState(false);

    return Container(
      margin: const EdgeInsets.only(right: Insets.m),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(Corners.s10),
        border: isSelected.value
            ? Border.all(color: Theme.of(context).primaryColor, width: 1.5)
            : null,
      ),
    );
  }
}
