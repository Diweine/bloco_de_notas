import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppColors {
  static const Color rosa = Color.fromRGBO(245, 72, 127, 1);
  static const Color verde = Color.fromRGBO(88, 179, 104, 1);
  static const Color roxo = Color.fromRGBO(52, 48, 144, 1);
  static const Color ciano = Color.fromRGBO(68, 194, 253, 1);
  static const Color amarelo = Color.fromRGBO(250, 199, 54, 1);
  static const Color cinza = Color.fromRGBO(242, 245, 250, 1);
  static const Color preto54 = Color.fromRGBO(0, 0, 0, 0.54);

  static const blueGradient = LinearGradient(
    colors: <Color>[
      ciano,
      roxo,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [
      0.1,
      0.7,
    ],
    transform: GradientRotation((-34 * pi) / 180),
  );

  static const blueGradientAppBar = LinearGradient(
    colors: <Color>[
      ciano,
      roxo,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [
      0.1,
      0.58,
    ],
    transform: GradientRotation((60 * pi) / 180),
  );

  static const blueGradientButton = LinearGradient(
    colors: <Color>[
      ciano,
      roxo,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [
      0.1,
      0.58,
    ],
    transform: GradientRotation(0.5),
  );

  static const blueGradientButton1 = LinearGradient(
      colors: [ciano, roxo],
      begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(0.3, 1.0),
      stops: [0.0, 1.0]);
  //tileMode: TileMode.clamp);
}
