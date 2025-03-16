import 'package:flutter/material.dart';
import 'package:hadirku_mobile/utils/utils.dart';

import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonFocusScope(
      child: Scaffold(
        body: Padding(
          padding: SpacingStyle.paddingWithAppbarHeight,
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView(
              physics: const ScrollPhysics(),
              children: const [
                LoginHeader(),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}