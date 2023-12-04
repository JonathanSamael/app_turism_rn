import 'package:flutter/material.dart';
import 'package:flutter_app/app.dart';
import 'package:flutter_app/repositories/favorite_repository.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoriteRepository(),
      child: const MyApp(),
    ),
  );
}
