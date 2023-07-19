import 'dart:io';

class Question {
    String question;
    List<String> options;
    int correctAnswerIndex;

    Question(this.question, this.options, this.correctAnswerIndex);

    isCorrect(int selectedAnswerIndex) {
        return correctAnswerIndex == selectedAnswerIndex;
    } 
}

class Quiz {
    List<Question> questions;
    int score;

    Quiz(this.questions, this.score);

    void play() {
        for (int i = 0; i < questions.length; i++) {
            print('Question ${i + 1}: ${questions[i].question}');

            for (int j = 0; j < questions[i].options.length; j++) {
                print('${j + 1}: ${questions[i].options[j]}');
            }

            stdout.write('Enter your answer (1 - ${ questions[i].options.length}): ');

            int? selectedAnswer = int.parse(stdin.readLineSync()!);

            if (questions[i].isCorrect(selectedAnswer - 1)) {
                score++;
                print('Correct!');
            } else {
                print('Incorrect!');
            } 
        }
    }
}