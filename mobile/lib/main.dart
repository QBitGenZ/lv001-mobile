import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mobile/verify/accountAuth_screen.dart';

import 'package:month_year_picker/month_year_picker.dart';

import 'home/home_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        MonthYearPickerLocalizations.delegate,
        // Add other localizationsDelegates as needed
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        // Add other supported locales as needed
      ],
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white
      ),
      color: Colors.white,
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
