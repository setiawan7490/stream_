import 'package:flutter/material.dart';
import 'dart:async';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.white,
    Colors.brown,
    Colors.green
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    }); 
  }
}

class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  void addNumberTosink(int newNumber) {
    controller.sink.add(newNumber);
  }
  close() {
    controller.close();
  }
}