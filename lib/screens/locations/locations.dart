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
                            fit: BoxFit.cover),
                      ),
                      height: 200.0,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50.0,
                          color: Colors.black54,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              location.name.toUpperCase(),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0,),
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
