import 'package:flutter/material.dart';
import 'package:flutter_app/screens/locations/favorite_locations.dart';
import 'package:flutter_app/screens/locations/home_locations.dart';
import 'package:flutter_app/screens/widgets_detais/location_details.dart';
import 'package:flutter_app/style.dart';

const locationsRoute = '/';
const locationDetailRoute = '/text_detail';
const locationFavoriteRoute = '/favorite_locations';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  ThemeData _theme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        titleTextStyle: appBarTextStyle,
      ),
      textTheme: const TextTheme(
        titleLarge: primaryTitleStyle,
        titleMedium: titleTextStyle,
        bodyMedium: bodyTextStyle,
      ),
      useMaterial3: true,
    );
  }

  RouteFactory _routes() {
    return (settings) {
      Widget screen;
      switch (settings.name) {
        case locationsRoute:
          screen = const HomeLocations();          
          break;
        case locationDetailRoute:
          final arguments = settings.arguments as Map<String, dynamic>;
          screen = LocationDetais(arguments['id']);
          break;
        case locationFavoriteRoute:
          // final arguments = settings.arguments as Map<String, dynamic>;
          screen = const FavoritePage();
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
      // return print(screen);
    } ;
  }
}
