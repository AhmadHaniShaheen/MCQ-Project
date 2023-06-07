import 'package:flutter/material.dart';
import 'package:mcq_project/models/qusetions.dart';

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
  int questionNumber = 0;
  List<Questions> questionBank = [
    Questions(
      questionText:
          "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat",
      answer: true,
    ),
    Questions(
      questionText:
          "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog",
      answer: false,
    ),
    Questions(
      questionText: "Google was originally called \"Backrub\"",
      answer: false,
    ),
  ];
  List<Icon> scorKeeper = [];

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
                    questionBank[questionNumber].questionText,
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
                    bool correctAnswer = questionBank[questionNumber].answer;
                    if (correctAnswer == true) {
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
                      questionNumber++;
                    });
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
                    bool correctAnswer = questionBank[questionNumber].answer;
                    if (correctAnswer == true) {
                      scorKeeper.add(
                        const Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      );
                    } else {
                      scorKeeper.add(
                        const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );
                    }

                    setState(() {
                      questionNumber++;
                    });
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
}
