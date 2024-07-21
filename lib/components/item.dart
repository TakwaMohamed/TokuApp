import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.number, required this.sound, required this.color}) : super(key: key);
  final Number number;
  final String sound;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 100,
            color: Color(0xffEF9235),
            child:Row(
             children:[
              Container(
                color: Color(0xffFFF6DC),
                child: Image.asset(number.image)),
              Padding(
                padding: const EdgeInsets.only(left:16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(number.jpName,
                     style:TextStyle(
                      color:Colors.white,
                      fontSize: 20,
                      ),
                      ),
                    Text(number.enName,
                     style:TextStyle(
                      color:Colors.white,
                      fontSize: 20,
                      ),
                      ),
                  ],
                ),
              ),
              Spacer(
                flex: 1,
              ),
              IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource
                  ('sounds/numbers/number_eight_sound.mp3')
                  );
                },
               icon: Icon(Icons.play_arrow,
                  color:Colors.white,
                  size:30,
                  ),
                  ),
             ],
              ),
          );
  }
}