import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_buddy/presentation/announcement_screen/announcement_screen.dart';
import 'package:kids_buddy/util/export_util.dart';

import '../../bloc/announcement_tab_bloc/announcement_tab_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<AnnouncementTabBloc>().add(const GetAllAnnouncements());
    });
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AnnouncementScreen(),
              ));
            },
            child: const Text(
              "Go to announcement screen",
              style: TextStyle(color: whiteColor),
            )),
      ),
    );
  }
}
