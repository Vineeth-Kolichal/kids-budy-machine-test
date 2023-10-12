import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kids_buddy/bloc/announcement_tab_bloc/announcement_tab_bloc.dart';
import 'package:kids_buddy/data/models/announcement_model/announcement_model.dart';
import 'package:kids_buddy/presentation/announcement_screen/announcement_screen.dart';
import 'package:kids_buddy/presentation/home_screen/home_screen.dart';

import 'util/export_util.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(AnnouncementModelAdapter().typeId)) {
    Hive.registerAdapter(AnnouncementModelAdapter());
  }
  runApp(const KidsBuddyApp());
}

class KidsBuddyApp extends StatelessWidget {
  const KidsBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AnnouncementTabBloc(),
        )
      ],
      child: MaterialApp(
        theme: theme,
        home:const  HomeScreen(),
      ),
    );
  }
}
