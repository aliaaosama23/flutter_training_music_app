import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:music/utilities/constants.dart';

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
      child: RawMaterialButton(
        fillColor: kBackgroundColor,
        onPressed: () {
          playSound(cardNumber);
        },
        child: Text(
          cardTitle,
          style: kCardTextStyle,
        ),
      ),
    );
  }
}

playSound(int cardNumber) {
  AudioCache player = AudioCache();

  player.play('note$cardNumber.wav');
}
