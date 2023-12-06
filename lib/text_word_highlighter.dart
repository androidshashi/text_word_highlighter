library text_word_highlighter;

import 'package:flutter/material.dart';
import 'package:text_word_highlighter/utils/highlighter.dart';

class TextWordHighlighter extends StatelessWidget {
  TextWordHighlighter(
      {Key? key, required this.text, required this.highlighterList})
      : super(key: key);
  final String text;

  final List<Highlighter> highlighterList;

  final List<String> _wordList = [];

  @override
  Widget build(BuildContext context) {
    _wordList.addAll(text.split(" "));
    return RichText(
      text: TextSpan(children: _getTextSpan()),
    );
  }

  List<InlineSpan> _getTextSpan() {
    List<InlineSpan> spanList = [];
    for (int i = 0; i < _wordList.length; i++) {
      if (i > 0 && i <= _wordList.length) {
        spanList.add(const TextSpan(
          text: ' ',
        ));
      }
      final highlighters =
          highlighterList.where((element) => element.index == i).toList();
      if (highlighters.isNotEmpty) {
        spanList
            .add(TextSpan(text: _wordList[i], style: highlighters.first.style));
      } else {
        spanList.add(TextSpan(
            text: _wordList[i], style: const TextStyle(color: Colors.teal)));
      }
    }
    return spanList;
  }
}
