import 'package:flutter/material.dart';

import '../theming/styles.dart';

AppBar buildAppbar(context, {required String title}) {
  return AppBar(
    elevation: 0,
    leading: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Icon(Icons.arrow_back_ios_new),
    ),
    title: Text(
      title,
      style: TextStyles.size19Weight700,
    ),
    centerTitle: true,
  );
}
