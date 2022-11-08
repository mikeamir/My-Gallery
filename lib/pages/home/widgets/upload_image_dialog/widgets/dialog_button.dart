import 'package:flutter/material.dart';
import 'package:my_gallery/core/constants/app_colors.dart';
import 'package:my_gallery/core/constants/app_fonts.dart';

typedef Action = void Function();

enum DialogButtonIcon { gallery, camera }

class DialogButton extends StatelessWidget {
  final Action action;
  final String text;
  final DialogButtonIcon icon;

  const DialogButton({
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
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 13,
        ),
        alignment: Alignment.center,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/${icon.name}.png'),
              const SizedBox(width: 7),
              Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontFamily: AppFonts.segoeUI.familyName,
                  fontSize: 27,
                  fontWeight: FontWeight.w900,
                  color: AppColors.text,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
