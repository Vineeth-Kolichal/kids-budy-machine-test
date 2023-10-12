import 'package:flutter/material.dart';
import 'package:kids_buddy/presentation/announcement_screen/announcement_screen.dart';

void main(List<String> args) {
  runApp(KidsBuddyApp());
}

class KidsBuddyApp extends StatelessWidget {
  const KidsBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        tabBarTheme: TabBarTheme(
            labelColor: Colors.pink[900], indicatorColor: Colors.pink[900]),
        useMaterial3: true,
      ),
      home: AnnouncementScreen(),
    );
  }
}
