import 'package:flutter/material.dart';
import 'package:mcq_project/quiz_brain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Icon> scorKeeper = [];
  QuizBrain quizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 8,
                child: Center(
                  child: Text(
                    quizBrain.questionsText(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    checkAnswer(true);
                  },
                  child: const Text("true"),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    checkAnswer(false);
                  },
                  style: const ButtonStyle(),
                  child: const Text("False"),
                ),
              ),
              Row(
                children: scorKeeper,
              )
            ],
          ),
        ),
      ),
    );
  }

  void checkAnswer(bool userChoice) {
    bool correctAnswer = quizBrain.questionsAnswer();
    if (correctAnswer == userChoice) {
      scorKeeper.add(
        const Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      scorKeeper.add(
        const Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }

    setState(() {
      quizBrain.nextQuesition();
    });
  }
}
