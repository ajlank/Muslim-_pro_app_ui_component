import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:muslim_pro_ui/core/colors/colors.dart';
import 'package:muslim_pro_ui/core/style/style.dart';

class LastReadTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconPath;
  final String backgroundPath;

  const LastReadTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconPath,
    required this.backgroundPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppStyle.parentContainerWidth,
      height: AppStyle.parentContainerHeight,
      decoration: BoxDecoration(
        color: AppColors.cardBackgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          // Icon
          Positioned(
            top: 16,
            left: 13,
            child: Container(
              width: AppStyle.containerWidth,
              height: AppStyle.containerHeight,
              child: SvgPicture.asset(iconPath, fit: BoxFit.cover),
            ),
          ),
          // Texts
          Positioned(
            left: 55,
            top: 12,
            child: Container(
              height: 57,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'roboto',
                      color: AppColors.lastReadTextColor,
                      fontSize: AppStyle.lastReadSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: AppColors.titleTextColor,
                      fontSize: AppStyle.shahiBukhariTextSize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Background
          Container(
            height: 70,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 23),
              child: SvgPicture.asset(
                backgroundPath,
                width: 347,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
