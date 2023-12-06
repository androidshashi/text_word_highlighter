import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Word Highlighter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Text Word Highlighter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: TextWordHighlighter(
        text: 'How are you? I am fine. I love fine.',
        highlighterList: [
          Highlighter(
              index: 2,
              style: const TextStyle(
                color: Colors.red,
              )),
          Highlighter(
              index: 5,
              style: const TextStyle(
                color: Colors.green,
              )),
          Highlighter(
              index: 6,
              style: const TextStyle(
                color: Colors.blue,
              )),
          Highlighter(
              index: 8,
              style: const TextStyle(
                color: Colors.orange,
              )),
        ],
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
