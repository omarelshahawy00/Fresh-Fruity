import 'package:ecommerce_app/core/helper_functions/on_generate_rout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const freshfruit());
}

class freshfruit extends StatelessWidget {
  const freshfruit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRouter.splashScreen,
    );
  }
}
