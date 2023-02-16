import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'quiz app',
      home: QuizScreen(),
    );
  }
}

class Question {
  String questionText;
  String option1;
  String option2;
  String option3;
  int answerIndex;

  Question({
    required this.questionText,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.answerIndex,
  });
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;

  final List<Question> _questions = [
    Question(
        questionText: "What is the capital of France?",
        option1: "London",
        option2: "Paris",
        option3: "New York",
        answerIndex: 1),
    Question(
        questionText: "What is the currency of Japan?",
        option1: "Yen",
        option2: "Dollar",
        option3: "Euro",
        answerIndex: 0),
    Question(
        questionText: "What is the tallest mountain in the world?",
        option1: "Everest",
        option2: "K2",
        option3: "Kilimanjaro",
        answerIndex: 0),
    // add more questions
  ];

  void _onOptionSelected(int selectedIndex) {
    if (selectedIndex == _questions[_currentQuestionIndex].answerIndex) {
      _score++;
    }
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        return ResultScreen(score: _score, totalQuestions: _questions.length);
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: (_currentQuestionIndex + 1) / _questions.length,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: QuestionWidget(
              question: _questions[_currentQuestionIndex],
              onOptionSelected: _onOptionSelected,
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionWidget extends StatelessWidget {
  final Question question;
  final Function(int) onOptionSelected;

  const QuestionWidget({
    super.key,
    required this.question,
    required this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question.questionText,
          style: const TextStyle(fontSize: 20.0),
        ),
        const SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () => onOptionSelected(0),
          child: Text(question.option1),
        ),
        const SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: () => onOptionSelected(1),
          child: Text(question.option2),
        ),
        const SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: () => onOptionSelected(2),
          child: Text(question.option3),
        ),
      ],
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const ResultScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz Results"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You got $score out of $totalQuestions correct!",
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 16.0),
            if (score == totalQuestions)
              const Text(
                "Congratulations, you got all the questions right!",
                style: TextStyle(fontSize: 18.0),
              ),
          ],
        ),
      ),
    );
  }
}

//In this example code, the `QuizScreen` widget displays the current question with options and a progress bar. 
//The `onOptionSelected` method updates the user's score and moves to the next question or the `ResultScreen` widget if the quiz is completed. 
//The `QuestionWidget` and `ResultScreen` widgets are simple stateless widgets that display the question and the results of the quiz. 
//You can customize these widgets according to your needs.