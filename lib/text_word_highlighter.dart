library text_word_highlighter;

import 'package:flutter/material.dart';
import 'package:text_word_highlighter/utils/word_highlight.dart';

class TextWordHighlighter extends StatelessWidget {
  TextWordHighlighter(
      {Key? key,
      required this.text,
      required this.wordHighlightList,
      required this.textStyle,
      this.overflow = TextOverflow.clip})
      : super(key: key);

  // The input sentence or string
  final String text;

  // List of WordHighlight that contains index, text style of the word present at the index
  final List<WordHighlight> wordHighlightList;

  // Split the text(sentence) into words and store it into _wordList
  final List<String> _wordList = [];

  // Common text style for all the words in the sentence
  final TextStyle textStyle;

  // text overflow
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    // split the sentence into list of words separated by space
    _wordList.addAll(text.split(" "));
    return RichText(
      text: TextSpan(style: textStyle, children: _getTextSpan()),
      overflow: overflow,
    );
  }

  // Get all the words as list of TextSpan
  List<InlineSpan> _getTextSpan() {
    List<InlineSpan> spanList = [];

    for (int i = 0; i < _wordList.length; i++) {
      // Start giving space from index 1 before last word.
      if (i > 0 && i <= _wordList.length) {
        spanList.add(TextSpan(text: ' ', style: textStyle));
      }

      // Get highlighter for the given index
      final highlighters =
          wordHighlightList.where((element) => element.wordIndex == i).toList();

      // Check if any highlighter exists for the given index
      spanList.add(TextSpan(
          text: _wordList[i],
          style: highlighters.isNotEmpty
              ? highlighters.first.wordStyle
              : textStyle));
    }
    return spanList;
  }
}
