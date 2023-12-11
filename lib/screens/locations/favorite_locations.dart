import 'package:flutter/material.dart';
import 'package:flutter_app/repositories/favorite_repository.dart';
import 'package:flutter_app/screens/widgets_detais/list_locations.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final favorites = FavoriteRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Consumer<FavoriteRepository>(
          builder: (context, favorites, child) {
            return favorites.list.isEmpty
                ? const ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Ainda não há praias favoritas'),
                  )
                : ListView.builder(
                    itemCount: favorites.list.length,
                    itemBuilder: (_, index) {
                      return ListFavoriteLocations(favorites);
                    },
                  );
          },
        ),
      ),
    );
  }
}

class ListFavoriteLocations extends StatelessWidget {
  final FavoriteRepository favorites;

  const ListFavoriteLocations(this.favorites, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: favorites.list.length,
        itemBuilder: (context, index) {
          final favoriteLocation = favorites.list;
          print(favoriteLocation[index]);
          return GestureDetector(
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(favoriteLocation[index].imagePath),
                      fit: BoxFit.cover),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}