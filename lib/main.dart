import 'package:flutter/material.dart';
import 'package:flutter_test_application/config/app_routes.dart';
// import 'package:flutter_test_application/pages/test_page.dart';
import 'package:flutter_test_application/styles/app_colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test_application/l10n/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      supportedLocales: L10n.all,
      locale: const Locale("ar"),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // home: TestPage(),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.paegs,
    );
  }
}
