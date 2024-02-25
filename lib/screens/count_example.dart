import 'dart:async';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/count_provider.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     final countProvider = Provider.of<CountProvider>(context,listen: false);
//     Timer.periodic(Duration(minutes: 1), (timer) {
// countProvider.setCount();
//     });
//   }
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("Counter with Provider"),
      ),
      body: Center(
        // Center the entire body content
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            return Text(value.count.toString());
          },
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat, // Position FAB at bottom right
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
