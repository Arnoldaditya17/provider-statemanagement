import 'dart:ffi';

import 'package:flutter/material.dart';

class NotifyListenerScreen extends StatelessWidget {
  NotifyListenerScreen({Key? key}) : super(key: key);
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ValueListenableBuilder(valueListenable: toggle, builder: (context,value,child)
            {
              return TextFormField(
                onTap: () {},
                obscureText: toggle.value,
                decoration: InputDecoration(
                  suffix: InkWell(
                    onTap: (){
                      toggle.value=!toggle.value;
                    },
                    child:  Icon(toggle.value?Icons.visibility_off:Icons.visibility),
                  ),
                  hintText: "Password",
                  border: const OutlineInputBorder(),
                ),
              );
            })

          ),
        ],
      ),
    );
  }
}
