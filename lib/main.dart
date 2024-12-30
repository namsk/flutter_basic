import 'package:flutter/material.dart';
import 'package:flutter_basic/widget.dart';
// entry point of the app
void main() {
  runApp(const MyApp());
  // runApp 함수는 위젯(MyApp)을 받아서 위젯 트리의 루트로 만듭니다.
  // runApp(const MyWidgetApp());
}

class MyApp extends StatelessWidget {
  //  Stateless Widget은 상태가 없는 위젯
  const MyApp({super.key});
  //  super.key : 부모 클래스(StatelessWidget)의 생성자에 전달될 키.
  //  위젯 트리에서 위젯을 식별하는 데 사용됨

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //  build의 매개변수 context는 위젯의 위치와 테마 정보를 제공
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const WidgetGalleryPage(title: 'Widget Gallery'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key, required this.title}); //  생성자
  /*
  - super.key : 부모 클래스의 생성자에 전달할 수 있는 키. 위젯의 고유 식별자로 사용됨
  - required : 필수 매개변수 표시
   */
  final String title; //  final : 변경 불가능한 변수

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  //  createState() : State 객체를 생성하는 함수
  //  do it fluuter p63 참고

  //  Stateful 위젯은 build 메서드를 오버라이드하지 않으며,
  //  대신 createState() 메서드를 오버라이드하여 State 객체를 생성
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; //  State로 사용할 변수

  void _incrementCounter() {
    //  floatingActionButton이 눌러지면 호출될 이벤트 핸들러
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
