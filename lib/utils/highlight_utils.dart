import 'package:flutter/cupertino.dart';
import 'package:text_word_highlighter/utils/word_highlight.dart';

/// Type by which the word is getting highlighted
enum HighlightType {
  /// Highlight by word
  byWord,

  /// Highlight by index
  byIndex,

  /// Highlight by range
  byRange,

  /// Highlight by character
  byCharacter
}

// Get the highlight word based on the the highlight type
@protected
bool isHighlightedWord(List<String> wordList,
    {required int index, required WordHighlight wordHighlight}) {
  switch (wordHighlight.highlightType) {
    case HighlightType.byIndex:
      {
        return index == wordHighlight.wordIndex;
      }
    case HighlightType.byWord:
      {
        return wordHighlight.ignoreCase
            ? wordList[index].toLowerCase() ==
            wordHighlight.word?.toLowerCase()
            : wordList[index] == wordHighlight.word;
      }
    default:
      false;
  }

  return false;
}
