import 'package:flutter/material.dart';
import 'package:kids_buddy/presentation/announcement_screen/announcement_screen.dart';

import 'util/export_util.dart';

void main(List<String> args) {
  runApp(KidsBuddyApp());
}

class KidsBuddyApp extends StatelessWidget {
  const KidsBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:theme,
      home: AnnouncementScreen(),
    );
  }
}
