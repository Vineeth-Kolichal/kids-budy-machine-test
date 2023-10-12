import 'package:flutter/material.dart';

class Responsive {
  static isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 500;
  }
}
