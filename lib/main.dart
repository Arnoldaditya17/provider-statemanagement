import 'package:flutter/material.dart';
import 'package:flutter_projects/provider/count_provider.dart';
import 'package:flutter_projects/screens/count_example.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(create: (_)=>CountProvider(),
child: MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Counter(),
),
    );

  }
}


