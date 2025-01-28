import 'dart:convert';

import 'package:ecommerce_app/core/services/shared_preferences_singletone.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';

UserEntity getUser() {
  var jsonString = Prefs.getString(userData);
  var userEintity = UserModel.fromJson(jsonDecode(jsonString));
  return userEintity;
}
