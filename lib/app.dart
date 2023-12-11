import 'package:flutter/material.dart';
import 'package:flutter_app/screens/locations/home_locations.dart';
import 'package:flutter_app/style.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _theme(),
      home: const HomeLocations(),
    );
  }

  ThemeData _theme() {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        titleTextStyle: appBarTextStyle,
      ),
      textTheme: const TextTheme(
        titleLarge: primaryTitleStyle,
        titleMedium: titleTextStyle,
        bodyMedium: bodyTextStyle,
      ),
      navigationBarTheme: navigationBarStyle,
    );
  }
}
