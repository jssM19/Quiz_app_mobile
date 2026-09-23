import 'package:flutter/material.dart';

const kSecondaryColor = Color(0xFF8B94BC);
const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kBlackColor = Color(0xFF101010);
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
const double kDefaultPadding = 20.0;

const List<Map<String, dynamic>> sampleData = [
  {
    'id': 1,
    'question':
        'Flutter is an open-source UI software development Kit created by_______',
    'options': ['Apple', 'Google', 'Microsoft', 'Facebook'],
    'answer_index': 1,
  },
  {
    'id': 2,
    'question': 'When google release Flutter.',
    'options': ['Jun 2017', 'Julie 2017', 'May 2017', 'May 2018'],
    'answer_index': 2,
  },
  {
    'id': 3,
    'question':
        '¿What is the name of the widget that does NOT change its state?',
    'options': [
      'StatefulWidget',
      'StatelessWidget',
      'InheritedWidget',
      'FlexibleWidget',
    ],
    'answer_index': 3,
  },
  {
    'di': 4,
    'question': '¿What is the name of the widget that *does* change its state?',
    'options': [
      'StatelessWidget',
      'StatelessState',
      'StatefulWidget',
      'DynamicWidget',
    ],
    'answer_index': 4,
  },
  {
    'id': 5,
    'question':
        '¿Qué método se usa para actualizar la interfaz cuando cambia el estado?',
    'options': ['updateUI()', 'refresh()', 'setState()', 'rebuild()'],
    'answer_index': 5,
  },
  {
    'id': 6,
    'question':
        '¿Which lifecycle method is executed when building the interface?',
    'options': ['initState()', 'build()', 'dispose()', 'createState()'],
    'answer_index': 6,
  },
];
