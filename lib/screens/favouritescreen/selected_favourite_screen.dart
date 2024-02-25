import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favourite_provider.dart';
class SelectedFavourite extends StatefulWidget {
  const SelectedFavourite({super.key});

  @override
  State<SelectedFavourite> createState() => _SelectedFavouriteState();
}

class _SelectedFavouriteState extends State<SelectedFavourite> {
  @override
  Widget build(BuildContext context) {
    final favourite=Provider.of<FavouriteProvider>(context);
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
              itemCount:favourite.list.length ,
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
