class Question {
  final int? id;
  final String? question;
  final List<String>? options;
  final int? answerIndex;

  Question({this.id, this.question, this.options, this.answerIndex});
}

const List<dynamic> sampleData = <dynamic>[
  <String, Object>{
    "id": 1,
    "question":
        "Flutter is an open-source UI software development kit created by ______",
    "options": <String>['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answerIndex": 1,
  },
  <String, Object>{
    "id": 2,
    "question": "When google release Flutter.",
    "options": <String>['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answerIndex": 2,
  },
  <String, Object>{
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": <String>['Double', 'Int', 'Char', 'Word'],
    "answerIndex": 2,
  },
  <String, Object>{
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": <String>['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answerIndex": 2,
  },
];
