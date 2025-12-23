import 'package:flutter/material.dart';

import '../../../../common/components/components.dart';
import '../../../../common/styles/text_style.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome Back', style: TextStyles.title),
        addHeight(8),
        Text(
          'Practice. Improve. Succeed.',
          style: TextStyles.hintThemeText,
        ),
      ],
    );
  }
}
