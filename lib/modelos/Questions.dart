class Question {
  final int? id, answer;
  final String? question;
  final List<String>? options;

  Question({this.id, this.question, this.answer, this.options});
}

const List<dynamic> sample_data = <dynamic>[
  <String, Object>{
    "id": 1,
    "question":
        "Flutter is an open-source UI software development kit created by ______",
    "options": <String>['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  <String, Object>{
    "id": 2,
    "question": "When google release Flutter.",
    "options": <String>['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  <String, Object>{
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": <String>['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  <String, Object>{
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": <String>['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
];

