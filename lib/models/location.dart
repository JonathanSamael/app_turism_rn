import 'location_fact.dart';

class Location {
  final String id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.facts,
  });
}
