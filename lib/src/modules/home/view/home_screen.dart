import 'package:flutter/material.dart';
import 'package:foile/src/global/config/theme/theme_colors.dart';
import 'package:foile/src/global/config/theme/theme_dimens.dart';

import '../../../global/utils/constants.dart';
import 'components/home_headline_section.dart';
import 'components/players_list.dart';

class HomeScreen extends StatefulWidget {
  final String username;
  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: ThemeColors.mainColor,
          ),
          HomeHeadlineSection(username: widget.username),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: ThemeColors.whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ThemeDimens.sizex20 * 2),
                      topRight: Radius.circular(ThemeDimens.sizex20 * 2))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: ThemeDimens.sizex20, top: ThemeDimens.sizex20),
                    child: Text(
                      ConstantsHelper.topRanking,
                      style: TextStyle(
                        fontSize: ThemeDimens.sizex16,
                        fontWeight: FontWeight.bold,
                        color: ThemeColors.mainColor,
                      ),
                    ),
                  ),
                  const PlayersList(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
