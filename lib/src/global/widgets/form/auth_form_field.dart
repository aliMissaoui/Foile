import 'package:flutter/material.dart';
import 'package:foile/src/global/config/theme/theme_colors.dart';

import '../../../modules/auth/login/controller/auth_controller.dart';
import '../../config/theme/theme_dimens.dart';

class AuthFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final String errorText;

  const AuthFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.labelText,
      required this.errorText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ThemeDimens.sizex18 * 2, vertical: ThemeDimens.sizex08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
              fontSize: ThemeDimens.sizex14,
              fontWeight: FontWeight.normal,
            ),
          ),
          TextFormField(
            controller: controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ThemeDimens.sizex12),
                borderSide: BorderSide(
                  color: ThemeColors.activeGreenColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ThemeDimens.sizex12),
                borderSide: BorderSide(
                  color: ThemeColors.greyColor,
                  width: ThemeDimens.sizex02,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ThemeDimens.sizex12),
                borderSide: BorderSide(
                  color: ThemeColors.greyColor,
                  width: ThemeDimens.sizex02,
                ),
              ),
            ),
            validator: (value) => AuthController()
                .validateAuthForm(value: value!, labelText: labelText),
            onChanged: (value) {},
            style: TextStyle(
              fontSize: ThemeDimens.sizex14,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: ThemeDimens.sizex12),
        ],
      ),
    );
  }
}
