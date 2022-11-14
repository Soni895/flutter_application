import 'package:flutter/material.dart';

import 'bottom_bar.dart';

void main() {
  runApp(
    MaterialApp(
      title: "introduction App",
      home: BottomMenu(),
      theme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Colors.pink,
      ),
    ),
  );
}
