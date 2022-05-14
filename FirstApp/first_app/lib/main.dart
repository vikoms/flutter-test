import 'package:first_app/bottom_navigation_bar.dart';
import 'package:first_app/counter.dart';
import 'package:first_app/my_button.dart';
import 'package:first_app/my_example_layout.dart';
import 'package:first_app/my_layout.dart';
import 'package:first_app/my_widget.dart';
import 'package:first_app/random_words.dart';
import 'package:first_app/shopping_list_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcome to Flutter",
      home: MyExampleLayout(),
    );
  }
}
