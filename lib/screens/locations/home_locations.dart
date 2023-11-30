import 'package:flutter/material.dart';
// import 'package:flutter_app/app.dart';
import 'package:flutter_app/screens/locations/favorite_locations.dart';
import 'package:flutter_app/screens/widgets_detais/list_locations.dart';

class HomeLocations extends StatefulWidget {
  const HomeLocations({super.key});
  @override
  State<HomeLocations> createState() => _HomeLocationsState();
}

class _HomeLocationsState extends State<HomeLocations> {
  @override
  Widget build(BuildContext context) {
    int currentPageIndex = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Praias do RN'),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          ListLocations(),
          FavoritePage()
        ],
      ),

      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.beach_access),
            icon: Icon(Icons.beach_access_outlined),
            label: "Lista de praias",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite_border),
            icon: Icon(Icons.favorite_border_outlined),
            label: "Favoritos",
          ),
        ],
      ),
    );
  }

  // _onFavoriteTap(BuildContext context) {
  //   Navigator.pushNamed(context, locationFavoriteRoute);
  // }
}
