import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.textStyle,
    this.buttonWidth,
    this.buttonHeight,
    this.backgroundColor,
    this.borderRadius,
    this.horizontalPadding,
    this.verticalPadding,
  });

  final VoidCallback onPressed;
  final String buttonText;
  final TextStyle? textStyle;
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          fixedSize: Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 52),
          backgroundColor: backgroundColor ?? ColorsManager.mainBlue,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(16), // Rounds the button corners
          ),
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 12,
              vertical: verticalPadding ?? 14),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: textStyle ?? TextStyles.size16Weight700,
        ));
  }
}
