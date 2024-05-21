import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/consts/colors.dart';
import 'package:flutter_calculator/views/main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: backgroundColor),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: mainTextColor),
          titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: mainButtonColor,
            foregroundColor: secondaryTextColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
            fixedSize: const Size.fromHeight(86),
            textStyle: const TextStyle(fontSize: 28),
          ),
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: mainTextColor,
          unselectedLabelColor: mainTextColor,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            shape: BoxShape.rectangle,
            color: accentColor,
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          dividerHeight: 0,
        ),
      ),
      home: const MainPage(),
    );
  }
}
