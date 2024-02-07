library text_word_highlighter;

import 'package:flutter/material.dart';
import 'package:text_word_highlighter/utils/highlight_utils.dart';
import 'package:text_word_highlighter/utils/word_highlight.dart';

///Highlight multiple words inside the text
class TextWordHighlighter extends StatelessWidget {
  ///Highlight multiple words inside the text
  TextWordHighlighter(
      {Key? key,
      required this.text,
      required this.wordHighlightList,
      required this.textStyle,
      this.overflow = TextOverflow.clip,
      this.textDirection,
      this.maxLines,
      this.locale})
      : super(key: key);

  /// The input sentence or string
  final String text;

  /// List of WordHighlight that contains index, text style of the word present at the index
  final List<WordHighlight> wordHighlightList;

  /// Split the text(sentence) into words and store it into _wordList
  final List<String> _wordList = [];

  /// Common text style for all the words in the sentence
  final TextStyle textStyle;

  /// text overflow
  final TextOverflow overflow;

  /// Rich text properties
  final TextAlign textAlign = TextAlign.start;
  final TextDirection? textDirection;
  final bool softWrap = true;
  final double textScaleFactor = 1.0;
  final TextScaler textScaler = TextScaler.noScaling;
  final int? maxLines;
  final Locale? locale;

  @override
  Widget build(BuildContext context) {
    // split the sentence into list of words separated by space
    _wordList.addAll(text.split(" "));
    return RichText(
      textAlign: textAlign,
      textDirection: textDirection,
      softWrap: softWrap,
      textScaleFactor: textScaleFactor,
      textScaler: textScaler,
      maxLines: maxLines,
      locale: locale,
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
      final highlighters = wordHighlightList
          .where((wordHighlight) => isHighlightedWord(_wordList,
              index: i, wordHighlight: wordHighlight))
          .toList();

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
