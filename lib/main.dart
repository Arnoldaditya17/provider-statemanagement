import 'package:flutter/material.dart';
import 'package:flutter_projects/provider/auth_provider.dart';
import 'package:flutter_projects/provider/count_provider.dart';
import 'package:flutter_projects/provider/favourite_provider.dart';
import 'package:flutter_projects/provider/slider_provider.dart';
import 'package:flutter_projects/provider/theme_changer.dart';

import 'package:flutter_projects/screens/loginscreen/login.dart';




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
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(create: (_)=>AuthProvider()),
      ],
      child: Builder(builder: (BuildContext context) {
        final themeProvider=Provider.of<ThemeProvider>(context);
        return MaterialApp(
          themeMode: themeProvider.themeMode,
          theme: ThemeData(
            
            iconTheme: const IconThemeData(color: Colors.blue,)


          ),
          darkTheme: ThemeData(brightness: Brightness.dark,
          primaryColor: Colors.red,
            iconTheme:const IconThemeData(color: Colors.red),
            appBarTheme:  const AppBarTheme(backgroundColor: Colors.red),

          ),


          debugShowCheckedModeBanner: false,
          home:  const LoginScreen(),//NotifyListenerScreen(),
          //DarkScreen(),
        );
      }),
    );
  }
}
