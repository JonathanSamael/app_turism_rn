import 'package:flutter/material.dart';
import 'package:flutter_app/app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  const Locations({super.key});

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Praias do RN'),
        centerTitle: true,
      ),
      body: ListView(
        children: locations
            .map(
              (location) => GestureDetector(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(location.imagePath),
                        fit: BoxFit.cover
                        ),
                        
                      ),
                      height: 220.0,
                      child: Text(
                        textAlign: TextAlign.center,
                        location.name.toUpperCase(),
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
                onTap: () => _onLocationTap(context, location.id),
              ),
            )
            .toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, locationDetailRoute,
        arguments: {'id': locationID});
  }
}
