import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    required this.kBackgroundColor,
    required this.cardTitle,
    required this.cardNumber,
    Key? key,
  }) : super(key: key);

  final Color kBackgroundColor;
  final String cardTitle;
  final int cardNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            kBackgroundColor,
          ),
          foregroundColor: MaterialStateProperty.all(
            const Color(0xFFFFFFFF),
          ),
        ),
        onPressed: () {
          playSound(cardNumber);
        },
        child: Text(
          cardTitle,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

playSound(int cardNumber) {
  AudioCache player = AudioCache();

  player.play('note$cardNumber.wav');
}
