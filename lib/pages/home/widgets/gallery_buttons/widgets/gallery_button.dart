import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_gallery/core/constants/app_colors.dart';
import 'package:my_gallery/core/constants/app_fonts.dart';

typedef Action = void Function();

enum GalleryButtonIcon { logout, upload }

class GalleryButton extends StatelessWidget {
  final Action action;
  final String text;
  final GalleryButtonIcon icon;

  const GalleryButton({
    required this.action,
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent.withOpacity(0),
      splashColor: Colors.transparent.withOpacity(0),
      onTap: action,
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/${icon.name}.svg',
                  width: 32,
                  height: 28,
                ),
                const SizedBox(width: 10),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: AppFonts.balooThambi2.familyName,
                    color: AppColors.text,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
