import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:text_word_highlighter/utils/highlight_utils.dart';
import 'package:text_word_highlighter/utils/word_highlight.dart';

void main() {
  List<String> wordList = [];

  group("isHighlightedWord Test cases", () {
    // setup
    setUp(() {
      wordList = ["Hello", "Hi", "Bye", "Sonu", "Zara", "Sara", "Zeenat"];
    });

    test("Check if at index 2 word highlight gives true", () {
      // Act
      bool isHighlighted = isHighlightedWord(wordList,
          index: 2,
          wordHighlight: WordHighlight.byIndex(
              wordIndex: 2, wordStyle: const TextStyle()));

      // Assert
      expect(true, isHighlighted);
    });

    test("Check if the word 'Bye' is Highlighted", () {
      // Act
      bool isHighlighted = isHighlightedWord(wordList,
          index: 2,
          wordHighlight: WordHighlight.byWord(wordStyle: const TextStyle(), word: 'Bye'));

      // Assert
      expect(true, isHighlighted);
    });

    test("Check if the word 'Bye' is not Highlighted", () {
      // Act
      bool isHighlighted = isHighlightedWord(wordList,
          index: 5,
          wordHighlight: WordHighlight.byWord(wordStyle: const TextStyle(), word: 'Bye'));

      // Assert
      expect(false, isHighlighted);
    });

    test("At index 2, the word is not highlighted", () {
      // Act
      bool isHighlighted = isHighlightedWord(wordList,
          index: 2,
          wordHighlight: WordHighlight.byIndex(wordStyle: const TextStyle(), wordIndex: 4));

      // Assert
      expect(false, isHighlighted);
    });
  });
}