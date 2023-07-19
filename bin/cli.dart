import 'package:cli/cli.dart' as cli;
import 'package:cli/lap.dart';
import 'package:cli/house.dart';
import 'package:cli/gender.dart';
import 'package:cli/animal.dart';
import 'package:cli/camera.dart';
import 'package:cli/question.dart';

void main(List<String> arguments) {
  Laptop del = Laptop();
  del.id = 1;
  del.name = 'Dell';
  del.ram = '256gb';
  del.display();
  House rose = House(5, 'Bunamwaya', 'Excellent');
  House mary = House(2, 'Lweza', 'Excellent');
  House beat = House(3, 'Zana', 'Excellent');
  List<House> houses = [];
  houses.addAll([rose, mary, beat]);
  for (House house in houses) {
    print('House Id: ${house.id}');
    print('House Name: ${house.name}');
    print('House Prize: ${house.prize}');
  }
  Person alex = Person('Alex', 'Ssentongo', Gender.Male);
  alex.display();
  Cat kitty = Cat(0, 'Grand Pa', 'gold', 'meow');
  kitty.display();
  Camera kodak = Camera();
  kodak.setId(0);
  kodak.setBrand('Kodak');
  kodak.setColor('black');
  kodak.setPrize(200.00);
  print('id: ${kodak.getId()}');
  print('name: ${kodak.getBrand()}');
  print('color: ${kodak.getColor()}');
  print('prize: ${kodak.getPrize()}');
  print('Hello world: ${cli.calculate()}!');
  List<Question> questions = [
    Question(
      'Who is the president of Uganda?',
      ['H.E Kaguta', 'H.E Kyagalunyi', 'H.E Besigye'],
      0
    ),
    Question(
      'What is the capital city of Uganda?',
      ['Mukono', 'Kampala', 'Wakiso'],
      1
    )
  ];
  Quiz quiz = Quiz(questions, 0);
  quiz.play();
  print('score: ${quiz.score}');
}
