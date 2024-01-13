import 'package:flutter/material.dart';
import 'package:foile/src/global/config/theme/theme_colors.dart';

import '../../../../global/widgets/form/auth_form.dart';
import 'components/login_headline_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.whiteColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoginHeadlineBloc(),
              AuthForm(),
            ],
          ),
        ),
      ),
    );
  }
}
