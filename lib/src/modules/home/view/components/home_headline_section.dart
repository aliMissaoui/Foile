import 'package:flutter/material.dart';
import 'package:foile/src/global/config/theme/theme_colors.dart';
import 'package:foile/src/global/config/theme/theme_dimens.dart';
import 'package:foile/src/global/utils/constants.dart';

class HomeHeadlineSection extends StatelessWidget {
  final String username;
  const HomeHeadlineSection({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: ThemeDimens.sizex24 * 2,
          left: ThemeDimens.sizex20,
          right: ThemeDimens.sizex20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              ConstantsHelper.avatarIcon,
              width: ThemeDimens.sizex20 * 4.5,
              height: ThemeDimens.sizex20 * 4.5,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: ThemeDimens.sizex12),
          IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ConstantsHelper.welcomeMsg,
                  style: TextStyle(
                    fontSize: ThemeDimens.sizex18,
                    fontWeight: FontWeight.bold,
                    color: ThemeColors.whiteColor,
                  ),
                ),
                Text(
                  username,
                  style: TextStyle(
                    fontSize: ThemeDimens.sizex14,
                    color: ThemeColors.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
