import 'package:flutter/material.dart';

import '../../../../utils/utils.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            AppImage.appImage,
          ),
        ),
        const SizedBox(height: 50),
        Text(Dictionary.loginTitle, style: theme.headlineMedium),
      ],
    );
  }
}