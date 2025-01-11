import 'package:ecommerce_app/core/theming/colors.dart';
import 'package:ecommerce_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.focusedBorder,
    this.enabledBorder,
    this.borderRadius,
    this.borderSide,
    this.hintTextStyle,
    this.contentPadding,
    this.isObscureText,
    this.backgroundColor,
    this.suffixIcon,
  });

  final String hintText;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final BorderRadius? borderRadius;
  final BorderSide? borderSide;
  final TextStyle? hintTextStyle;
  final EdgeInsetsGeometry? contentPadding;
  final bool? isObscureText;
  final Color? backgroundColor;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText ?? false,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: hintTextStyle ?? TextStyles.font14LightGrayRegular,
        fillColor: ColorsManager.moreLightGray,
        filled: true,
        suffixIcon: suffixIcon,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: backgroundColor ?? ColorsManager.mainBlue,
                width: 1.3,
              ),
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: backgroundColor ?? ColorsManager.lightGray,
                width: 1.3,
              ),
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            ),
      ),
    );
  }
}
