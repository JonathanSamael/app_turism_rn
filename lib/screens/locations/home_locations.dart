import 'package:flutter/material.dart';
import 'package:flutter_app/screens/locations/favorite_locations.dart';
import 'package:flutter_app/screens/widgets_detais/list_locations.dart';
import 'package:flutter_app/style.dart';

class HomeLocations extends StatefulWidget {
  const HomeLocations({super.key});
  @override
  State<HomeLocations> createState() => _HomeLocationsState();
}

class _HomeLocationsState extends State<HomeLocations> {
    int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Praias do RN'),
        centerTitle: true,
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
            selectedIcon: Icon(Icons.beach_access, color: background,),
            icon: Icon(Icons.beach_access_outlined),
            label: "Lista de praias",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite_border, color: background,),
            icon: Icon(Icons.favorite_border_outlined),
            label: "Favoritos",
          ),
        ],
      ),
      body: <Widget>[
        const Card(
          margin: EdgeInsets.all(8.0),
          child: ListLocations(),
        ),
        const Card(
          margin: EdgeInsets.all(8.0),
          child: FavoritePage(),
        ),
      ][currentPageIndex],
    );
  }
}
