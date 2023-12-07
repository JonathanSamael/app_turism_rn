import 'package:flutter/material.dart';
import 'package:flutter_app/repositories/location_repository.dart';
import 'package:flutter_app/screens/widgets_detais/location_details.dart';

class ListLocations extends StatefulWidget {
  const ListLocations({super.key});

  @override
  State<ListLocations> createState() => _ListLocationsState();
}

class _ListLocationsState extends State<ListLocations> {
  @override
  Widget build(BuildContext context) {
  final locations = LocationRepository.locations;
    return ListView(
        children: locations
            .map(
              (location) => GestureDetector(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(location.imagePath),
                            fit: BoxFit.cover),                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 200.0,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                            color: Colors.black54
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 50.0,
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
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
                onTap: () => {
                  _onTapNavigator(location, location.id)
                },
              ),
            )
            .toList(),
      );
  }

  _onTapNavigator(location, String locationID) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LocationDetais(location, id: locationID)));
  }
}
