import 'package:ecommerce_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/const_images.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: AppTextFormField(
        hintText: 'ابحث عن.......',
        borderRadius: BorderRadius.circular(0),
        borderSide: BorderSide.none,
        suffixIcon: SizedBox(
          width: 20,
          child: Center(
            child: SvgPicture.asset(
              ConstImages.filter,
            ),
          ),
        ),
        prefixIcon: SizedBox(
          width: 20,
          child: Center(
            child: SvgPicture.asset(
              ConstImages.search,
            ),
          ),
        ),
      ),
    );
  }
}
