import 'package:flutter/material.dart';

import '../../../../global/config/theme/theme_colors.dart';
import '../../../../global/config/theme/theme_dimens.dart';
import '../../../../global/utils/constants.dart';

class PlayersList extends StatelessWidget {
  const PlayersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: ConstantsHelper.players.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Card(
            color: ThemeColors.whiteColor,
            surfaceTintColor: ThemeColors.whiteColor,
            shadowColor: ThemeColors.whiteColor,
            elevation: ThemeDimens.sizex02,
            margin: EdgeInsets.only(
                right: ThemeDimens.sizex14 * 2,
                left: ThemeDimens.sizex14 * 2,
                top: index == 0 ? ThemeDimens.sizex00 : ThemeDimens.sizex08,
                bottom: ThemeDimens.sizex08),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: ThemeDimens.sizex24,
                  vertical: ThemeDimens.sizex04),
              title: Row(
                children: [
                  Text(
                    '${index + 1}',
                    style: TextStyle(
                      fontSize: ThemeDimens.sizex18,
                      fontWeight: FontWeight.bold,
                      color: ThemeColors.mainColor,
                    ),
                  ),
                  SizedBox(
                    width: ThemeDimens.sizex20,
                  ),
                  Container(
                    width: ThemeDimens.sizex20 * 3.5,
                    height: ThemeDimens.sizex20 * 3.5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/${ConstantsHelper.players[index]['name'].toString().split(" ")[0].toLowerCase()}.png",
                        width: ThemeDimens.sizex20 * 2,
                        height: ThemeDimens.sizex20 * 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: ThemeDimens.sizex12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ConstantsHelper.players[index]['name'],
                          style: TextStyle(
                            fontSize: ThemeDimens.sizex16,
                            fontWeight: FontWeight.bold,
                            color: ThemeColors.blackColor,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          ConstantsHelper.players[index]['car'],
                          style: TextStyle(
                            fontSize: ThemeDimens.sizex12,
                            color: ThemeColors.blackColor,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
