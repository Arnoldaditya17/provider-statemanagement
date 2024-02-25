import 'package:flutter/material.dart';
import 'package:flutter_projects/provider/slider_provider.dart';
import 'package:provider/provider.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Slider with Provider",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SliderProvider>(
              builder: (context, value, child) {
                return Slider(
                  max: 1,
                  min: 0,
                  value: value.value,
                  onChanged: (val) {
                    value.setSlide(val);
                  },
                );
              },
            ),
            Consumer<SliderProvider>(

                builder: (context,value,child){
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          color:
                          Colors.redAccent.withOpacity(value.value)),
                      child: const Center(child: Text("container-1")),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent
                              .withOpacity(value.value)),
                      child: const Center(child: Text("container-2")),
                    ),
                  ),
                ],
              );
            })

          ],
        ));
  }
}
