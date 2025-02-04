import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helper_function/on_generate_routes.dart';
import 'package:flutter_application_1/core/services/custom_bloc_observer.dart';
import 'package:flutter_application_1/core/services/git_it_service.dart';
import 'package:flutter_application_1/core/services/shared_preferences_singleton.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_application_1/generated/l10n.dart'; // Ensure this import exists for localization

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure this is first

  Bloc.observer = CustomBlocObserver();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Prefs.init(); // Ensure Prefs is initialized before setup
  setup();

  runApp(const FruitsHub()); // Fixed class name typo
}

class FruitsHub extends StatelessWidget {
  // Fixed class name typo
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
        colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primaryColor), // primaryColor is deprecated
      ),
      localizationsDelegates: const [
        // Added 'const' for optimization
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'), // Made 'Locale' a constant
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
