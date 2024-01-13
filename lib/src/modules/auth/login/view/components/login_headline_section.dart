import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foile/src/global/config/theme/theme_dimens.dart';

import '../../../../../global/utils/constants.dart';

class LoginHeadlineBloc extends StatelessWidget {
  const LoginHeadlineBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          ConstantsHelper.appRedLogo,
          semanticsLabel: ConstantsHelper.formulaOne,
        ),
        Padding(
          padding: EdgeInsets.only(
              top: ThemeDimens.sizex20 * 2, bottom: ThemeDimens.sizex08),
          child: Text(
            ConstantsHelper.loginHeadline,
            style: TextStyle(
              fontSize: ThemeDimens.sizex24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: ThemeDimens.sizex20 * 6),
          child: Text(
            ConstantsHelper.loginDescription,
            style: TextStyle(
              fontSize: ThemeDimens.sizex16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
