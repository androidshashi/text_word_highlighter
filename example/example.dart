import 'package:flutter/material.dart';
import 'package:text_word_highlighter/text_word_highlighter.dart';
import 'package:text_word_highlighter/utils/word_highlight.dart';

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
  final title = 'Hey Flutter Developers. This is a word highlighter package.';
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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //When you have index of the word in the line to be highlighted
          // Use WordHighlight.byIndex constructor
          TextWordHighlighter(
            text: title,
            textStyle: const TextStyle(color: Colors.teal),
            wordHighlightList: [
              WordHighlight.byIndex(
                  wordIndex: 2,
                  wordStyle: const TextStyle(
                    color: Colors.red,
                  )),
              WordHighlight.byIndex(
                  wordIndex: 5,
                  wordStyle: const TextStyle(
                    color: Colors.green,
                  )),
              WordHighlight.byIndex(
                  wordIndex: 6,
                  wordStyle: const TextStyle(
                    color: Colors.blue,
                  )),
              WordHighlight.byIndex(
                  wordIndex: 8,
                  wordStyle: const TextStyle(
                    color: Colors.orange,
                  )),
            ],
          ),

          // Highlight by word
          // Use WordHighlight.byWord constructor
          TextWordHighlighter(
            text: title,
            textStyle: const TextStyle(color: Colors.teal),
            wordHighlightList: [
              WordHighlight.byWord(
                  word: "Flutter",
                  wordStyle: const TextStyle(
                    color: Colors.red,
                  )),
              WordHighlight.byWord(
                  word: "THIS",
                  ignoreCase: true,
                  wordStyle: const TextStyle(
                    color: Colors.green,
                  )),
              WordHighlight.byWord(
                  word: "WORD",
                  ignoreCase: false,
                  wordStyle: const TextStyle(
                    color: Colors.green,
                  )),
            ],
          ),
        ],
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
