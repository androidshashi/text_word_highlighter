import 'package:flutter/material.dart';
import 'package:text_word_highlighter/utils/highlight_utils.dart';

/// A word Highlighter
/// This takes the word or the index and then based on the constructor used
/// it highlights the word with the specified word style
class WordHighlight {
  int? wordIndex;

  /// index of the word
  TextStyle? wordStyle;

  /// Style of the word
  String? word;

  /// word itself to be highlighted
  String? character;

  /// range of character to be highlighted
  Map<int, int>? range;

  /// Type of highlight
  final HighlightType _highlightType;

  /// word match should be case sensitive or not
  /// If false it strictly checks for the word or character
  /// if true it ignores the case
  bool ignoreCase = false;

  /// Type of highlight
  HighlightType get highlightType => _highlightType;

  /// Highlight options
  /// Highlight the word by index
  WordHighlight.byIndex({required this.wordIndex, required this.wordStyle})
      : _highlightType = HighlightType.byIndex;

  /// Highlight the word by word
  WordHighlight.byWord({
    required this.wordStyle,
    required this.word,
    this.ignoreCase = false,
  }) : _highlightType = HighlightType.byWord;

  // /// Highlight the word by character @todo future implementation
  // WordHighlight.byCharacter({
  //   required this.character,
  //   required this.wordStyle,
  //   this.ignoreCase = false,
  // }) : _highlightType = HighlightType.byCharacter;
  //
  // /// Highlight the segment between the range
  // WordHighlight.byRange({required this.range, required this.wordStyle})
  //     : _highlightType = HighlightType.byRange;
}
