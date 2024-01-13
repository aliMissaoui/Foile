import 'package:flutter/material.dart';
import 'package:foile/src/global/config/theme/theme_colors.dart';

import '../../config/theme/theme_dimens.dart';
import '../../utils/constants.dart';

class AuthFormBtn extends StatelessWidget {
  final VoidCallback onPressed;

  const AuthFormBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [ThemeColors.mainColor, ThemeColors.secondaryColor],
        ),
        borderRadius: BorderRadius.circular(ThemeDimens.sizex08),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: IntrinsicWidth(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: ThemeDimens.sizex24 * 1.5),
            child: Row(
              children: [
                Text(
                  ConstantsHelper.next.toUpperCase(),
                  style: TextStyle(
                    color: ThemeColors.whiteColor,
                    fontSize: ThemeDimens.sizex14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: ThemeDimens.sizex20),
                Icon(
                  Icons.arrow_forward_ios,
                  color: ThemeColors.whiteColor,
                  size: ThemeDimens.sizex12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
