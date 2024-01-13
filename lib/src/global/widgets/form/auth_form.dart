import 'package:flutter/material.dart';

import '../../../modules/auth/login/controller/auth_controller.dart';
import '../../../modules/home/view/home_screen.dart';
import '../../config/theme/theme_dimens.dart';
import '../../utils/constants.dart';
import '../button/auth_form_btn.dart';
import 'auth_form_field.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: AuthController.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthFormField(
            controller: AuthController.firstNameController,
            hintText: ConstantsHelper.firstNameHint,
            labelText: ConstantsHelper.firstName,
            errorText: AuthController.firstNameError,
          ),
          AuthFormField(
            controller: AuthController.lastNameController,
            hintText: ConstantsHelper.lastNameHint,
            labelText: ConstantsHelper.lastName,
            errorText: AuthController.lastNameError,
          ),
          SizedBox(height: ThemeDimens.sizex24 * 2),
          Center(
            child: AuthFormBtn(
              onPressed: () {
                if (AuthController.formKey.currentState!.validate()) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return HomeScreen(
                      username:
                          '${AuthController.firstNameController.text} ${AuthController.lastNameController.text}',
                    );
                  }));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
