//  1. Import the material package
import "package:flutter/material.dart";
//
// void main() {
//   //  entry point of the app
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   //  생성자
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//       return const MaterialApp(
//         home: Scaffold(
//           body: Center(
//             child: Text("Widget Gallery"),
//           )
//         )
//       );
//   }
// }
class MyWidgetApp extends StatelessWidget {
  const MyWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Widget Gallery",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WidgetGalleryPage(title: "Widget Gallery"),
    );
  }
}

class WidgetGalleryPage extends StatefulWidget {
  const WidgetGalleryPage({super.key, required this.title});

  final String title;

  @override
  State<WidgetGalleryPage> createState() => _WidgetGalleryPageState();
}

class _WidgetGalleryPageState extends State<WidgetGalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {}),
      body: const Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,  //  Column 위젯의 MainAxis는 세로 방향
            children: <Widget>[
              Icon(Icons.favorite),
              Icon(Icons.favorite),
              Icon(Icons.favorite),
              Text("Column 위젯", style: TextStyle(fontSize: 20))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,  //  Row 위젯의 MainAxis는 가로 방향
            children: <Widget>[
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Text("Row 위젯", style: TextStyle(fontSize: 20)),
            ]
          ),
        ],
      ),
    );
  }
}