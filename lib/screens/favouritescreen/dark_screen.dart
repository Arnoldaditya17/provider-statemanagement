import 'package:flutter/material.dart';
import 'package:flutter_projects/provider/theme_changer.dart';
import 'package:provider/provider.dart';

class DarkScreen extends StatefulWidget {
  const DarkScreen({super.key});

  @override
  State<DarkScreen> createState() => _DarkScreenState();
}

class _DarkScreenState extends State<DarkScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text("Light"),
            value: ThemeMode.light,
            groupValue: themeProvider.themeMode,
            onChanged: themeProvider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text("Dark"),
            value: ThemeMode.dark,
            groupValue: themeProvider.themeMode,
            onChanged: themeProvider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text("System"),
            value: ThemeMode.system,
            groupValue: themeProvider.themeMode,
            onChanged: themeProvider.setTheme,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.heart_broken),
          ),
        ],
      ),
    );
  }
}
