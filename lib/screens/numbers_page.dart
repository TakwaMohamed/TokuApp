import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number_model.dart';
class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<Number> numbers=const [
    Number(
      sound:'sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png', 
      jpName: 'Ichi', 
      enName: 'one',
      ),
    Number(
      sound:'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png', 
      jpName: 'Ni', 
      enName: 'two',
      ),
    Number(
      sound:'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png', 
      jpName: 'San', 
      enName: 'three',
      ),
    Number(
      sound:'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png', 
      jpName: 'Yon', 
      enName: 'four'
      ),
    Number(
      sound:'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png', 
      jpName: 'Go', 
      enName: 'five'
      ),
    Number(
      sound:'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png', 
      jpName: 'Roku', 
      enName: 'six'
      ),
    Number(
      sound:'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png', 
      jpName: 'Nana', 
      enName: 'seven'
      ),
    Number(
      sound:'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png', 
      jpName: 'Haci', 
      enName: 'eight'
      ),
    Number(
      sound:'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png', 
      jpName: 'Kyuu', 
      enName: 'nine'
      ),
    Number(
      sound:'sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png', 
      jpName: 'Juu', 
      enName: 'ten'
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Numbers'),
       backgroundColor: Color(0xff46322B),
      ),
      body:ListView.builder(
        itemCount:numbers.length,
        itemBuilder: (context, index){
          print(index);
          return Item(
            color : Color(0xffEF9235),
            number:numbers[index], sound: '',
          );
        }
        ),
    );
  }
}
