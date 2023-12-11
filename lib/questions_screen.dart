import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/model/quiz_question.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  final QuizQuestion currentQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.answers.map((answer) {
              return AnswerButton(answerText: answer, onTap: () {});
            })
          ],
        ),
      ),
    );
  }
}
