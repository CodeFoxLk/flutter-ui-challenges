import 'package:flutter/cupertino.dart';

const Color kBottomAppBarColor = Color.fromARGB(255, 49, 52, 63);
const Color kPrimaryColor = Color.fromARGB(255, 1, 161, 254);
const Color kSecondaryColor = Color.fromARGB(255, 107, 200, 252);

const Color kProgressBackGroundColor = Color.fromARGB(255, 24, 24, 28);
const Color kCardColor = Color.fromARGB(255, 31, 32, 38);

const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [kPrimaryColor, kSecondaryColor]);

const LinearGradient kBackGroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 48, 48, 58),
      Color.fromARGB(255, 28, 30, 35),
    ]);

const LinearGradient kCardGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 40, 40, 50),
      Color.fromARGB(255, 40, 40, 45),
    ]);