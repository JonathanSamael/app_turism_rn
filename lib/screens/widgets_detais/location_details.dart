import 'package:flutter/material.dart';
import 'package:flutter_app/screens/widgets_detais/image_banner.dart';
import 'package:flutter_app/screens/widgets_detais/text_section.dart';
import '../../models/location.dart';

class LocationDetais extends StatefulWidget {
  const LocationDetais(this._locationID, {super.key});

  final int _locationID;

  @override
  State<LocationDetais> createState() => _LocationDetaisState();
}

class _LocationDetaisState extends State<LocationDetais> {
  bool isFavorite = true;

  void toggleFavorite() {
    setState(() {
      if (isFavorite = !isFavorite) {
        isFavorite = true;
      } else {
        isFavorite = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(widget._locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location!.name),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                toggleFavorite();
              },
              icon: isFavorite ? const Icon(Icons.favorite_border) : const Icon(Icons.favorite),
              color: const Color(0xFFe63946),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ImageBanner(location.imagePath),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      location.name.toUpperCase(),
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(
                      8.0,
                    ),
                    child: Divider(
                      color: Colors.black12,
                    ),
                  ),
                  ...textSections(location),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
