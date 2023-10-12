import 'package:flutter/material.dart';

class Space {
  static Widget x(double value) {
    return SizedBox(
      width: value,
    );
  }

  static Widget y(double value) {
    return SizedBox(
      height: value,
    );
  }
}
