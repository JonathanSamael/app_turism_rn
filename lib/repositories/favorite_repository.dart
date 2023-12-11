import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_app/models/location.dart';

class FavoriteRepository extends ChangeNotifier {
  final List<Location> _favorites = [];

  UnmodifiableListView<Location> get list => UnmodifiableListView(_favorites);

  saveAll(List<Location> locations) {
    for (var location in locations) {
      if (!_favorites.contains(location)) _favorites.add(location);
    }
    print(locations);
    print('1');
    notifyListeners();
  }

  remove(Location location) {
    _favorites.remove(location);
    notifyListeners();
  }

}
