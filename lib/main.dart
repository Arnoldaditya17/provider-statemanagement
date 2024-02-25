import 'package:flutter/material.dart';
import 'package:flutter_projects/provider/count_provider.dart';
import 'package:flutter_projects/provider/favourite_provider.dart';
import 'package:flutter_projects/provider/slider_provider.dart';

import 'package:flutter_projects/screens/favouritescreen/favourite_example.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CountProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavouriteProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Favourite(),
      ),
    );
  }
}
