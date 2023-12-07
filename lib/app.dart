import 'package:flutter/material.dart';
import 'package:flutter_app/screens/locations/home_locations.dart';
import 'package:flutter_app/style.dart';

// const locationsRoute = '/';
// const locationDetailRoute = '/location_detail';
// const locationFavoriteRoute = '/favorite_locations';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: _routes(),
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

  // RouteFactory _routes() {
  //   return (settings) {
  //     Widget screen;
  //     switch (settings.name) {
  //       case locationsRoute:
  //         screen = const HomeLocations();          
  //         break;
  //       case locationDetailRoute:
  //         final arguments = settings.arguments as Map<List, dynamic>;
  //         screen = LocationDetais(id: arguments);
  //         break;
  //       case locationFavoriteRoute:
  //         screen = const FavoritePage();
  //         break;
  //       default:
  //         return null;
  //     }
  //     return MaterialPageRoute(builder: (BuildContext context) => screen);
  //   } ;
  // }
}
