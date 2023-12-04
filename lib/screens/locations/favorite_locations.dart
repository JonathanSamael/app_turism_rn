import 'package:flutter/material.dart';
import 'package:flutter_app/repositories/favorite_repository.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final favorites = FavoriteRepository();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [ 
        
        
        ],
      ),
    );
  }
}