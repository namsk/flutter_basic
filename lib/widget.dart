//  1. Import the material package
import "package:flutter/material.dart";

void main() {
  //  entry point of the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //  생성자
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text("Widget Gallery"),
          )
        )
      );
  }
}