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
4. Highlight words based on word

## Usage

Get the example `/example` folder.

### Highlight by index
```dart
          // To highlight by index
          // Use WordHighlight.byIndex constructor
          TextWordHighlighter(
            text: "Hey Flutter Developers. This is a word highlighter package.",
            textStyle: const TextStyle(color: Colors.teal),
            wordHighlightList: [
              WordHighlight.byIndex(
                 wordIndex: 2,
                 wordStyle: const TextStyle(
                 color: Colors.red)
              ),
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
```

### Highlight by word

```dart
          // Highlight by word
          // Use WordHighlight.byWord constructor
          TextWordHighlighter(
            text: "Hey Flutter Developers. This is a word highlighter package.",
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
```

### TextWordHighlighter attributes

Attributes  | Desscription                                                            
------------- |-------------------------------------------------------------------------
| TextWordHighlighter  | A widget that takes a sentence(basically a string) and highlights them. | 
| text  | A simple sentence in the form of string.                                | 
| textStyle  | TextStyle property of text for all the words inside text(sentence).     | 
| highlighterList  | List of WordHighlight(Please see WordHighlight attributes below ).      | 


#### WordHighlight Class

Currently There are two ways  you can highlight the word.

##### byIndex 

To highlight the word by index you have to provide two arguments in WordHighlight.byIndex constructor as shown below.

wordIndex : Index of the word
wordStyle : Style of the word

```dart
            WordHighlight.byIndex(
                wordIndex: 8, // Index of the word 
                wordStyle: const TextStyle(
                color: Colors.orange,
            )),
```

##### byWord

To highlight the word by index you have to provide two arguments in WordHighlight.byIndex constructor as shown below.

wordIndex : Index of the word
wordStyle : Style of the word
ignoreCase : [optional] true or false (To match the word case sensitive or insensitive) ,

```dart
            WordHighlight.byIndex(
                wordIndex: 8, // Index of the word 
                wordStyle: const TextStyle(
                color: Colors.orange)
                ignoreCase : true
            ),
```

### More features coming soon...
1. Highlight by character
2. Highlight by range


