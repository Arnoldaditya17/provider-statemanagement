import 'package:flutter/material.dart';
import 'package:flutter_projects/provider/favourite_provider.dart';
import 'package:provider/provider.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("favourite provider"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Consumer<FavouriteProvider>(
                    builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      if (value.list.contains(index)) {
                        value.removeList(index);
                      } else {
                        value.setList(index);
                      }
                    },
                    title: Text("data $index"),
                    trailing: value.list.contains(index)
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_border_outlined),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
