import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main(List<String> args) {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //drawer: const Drawer(),
        //appBar: AppBar(title: const Text('Flutter App')),
        body: GradientContainer(Colors.amber, Colors.orange),
        drawerScrimColor: Colors.black,
      )));
}
