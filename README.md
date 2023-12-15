<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
## text_word_highlighter
text_word_highlighter provides a widget TextWordHighlighter a widget helps you highlight(using text style property) one or many word inside a sentence. 

![image](https://github.com/androidshashi/text_word_highlighter/assets/91884965/8e06b128-5c93-4ee9-9fa7-6e4861e590b9)

## Features

1. Highlight multiple words inside a sentence.
2. Provide style for particular word
3. Highlight words based on index
4. Highlight words based on word(Will be added)

## Usage

Get the example `/example` folder.

```dart
TextWordHighlighter(
    text: 'He Flutter Developers. This is a word highlighter package.',
    textStyle: const TextStyle(color: Colors.teal),
    wordHighlightList: [
        WordHighlight(
            wordIndex: 2,// index of the word that will be highlighted
            wordStyle: const TextStyle(
            color: Colors.red, )),
        WordHighlight(
            wordIndex: 5,
            wordStyle: const TextStyle(
            color: Colors.green, )),
        WordHighlight(
            wordIndex: 6,
            wordStyle: const TextStyle(
            color: Colors.blue, )),
        WordHighlight(
            wordIndex: 8,
            wordStyle: const TextStyle(
            color: Colors.orange, )),
  ],
)
```

### Additional information

Attributes  | Desscription                                                                                                                
------------- |-----------------------------------------------------------------------------------------------------------------------------
| TextWordHighlighter  | A widget that takes a sentence(basically a string) and a list of indexes and highlights them.                               | 
| text  | A simple sentence in the form of string.                                                                                    | 
| textStyle  | TextStyle property of text for all the words inside text(sentence).                                                         | 
| highlighterList  | List of WordHighlight(A WordHighlight takes index of the word to be highlighted in the sentence, and the style for the word.). | 

### Coming soon
More features coming soon...

