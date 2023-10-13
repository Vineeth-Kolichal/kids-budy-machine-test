
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_buddy/bloc/announcement_tab_bloc/announcement_tab_bloc.dart';
import 'package:kids_buddy/presentation/widgets/space.dart';

import '../../../../util/export_util.dart';
import 'widgets/export_announcement_widgets.dart';

class AnnouncementTab extends StatelessWidget {
  const AnnouncementTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AnnouncementTabBloc, AnnouncementTabState, bool>(
      selector: (state) => state.showInitialMessageScreen,
      builder: (context, state) {
        if (state) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'You can create announcement to your classes',
                  textAlign: TextAlign.center,
                ),
                Space.y(10),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<AnnouncementTabBloc>()
                        .add(const ShowInputSection());
                  },
                  style: Theme.of(context).elevatedButtonTheme.style,
                  child: const Text('Create announcement',
                      style: TextStyle(
                          color: whiteColor, fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          );
        } else {
          return const Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [Expanded(child: MessageSection()), InputSection()],
            ),
          );
        }
      },
    );
  }
}
