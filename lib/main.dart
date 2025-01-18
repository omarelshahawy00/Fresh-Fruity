import 'package:ecommerce_app/core/helper_functions/custom_bloc_observer.dart';
import 'package:ecommerce_app/core/helper_functions/on_generate_route.dart';
import 'package:ecommerce_app/core/services/get_it_service.dart';
import 'package:ecommerce_app/core/services/shared_preferences_singletone.dart';
import 'package:ecommerce_app/firebase_options.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = CustomBlocObserver();
  getitSetup();
  runApp(const freshfruit());
  await Prefs.init();
}

class freshfruit extends StatelessWidget {
  const freshfruit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: Colors.white,
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ar'),
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRouter.splashScreen,
    );
  }
}
