import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../bloc/announcement_tab_bloc/announcement_tab_bloc.dart';
import '../../../../../data/models/announcement_model/announcement_model.dart';
import '../../../../widgets/space.dart';
import 'export_announcement_widgets.dart';

class MessageSection extends StatelessWidget {
  const MessageSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocSelector<AnnouncementTabBloc, AnnouncementTabState,
        List<AnnouncementModel>>(
      selector: (state) {
        return state.announcementList;
      },
      builder: (context, announcementList) {
        return ListView.separated(
          padding: const EdgeInsets.only(bottom: 10),
          itemBuilder: (context, index) =>
              MessageTile(announcementModel: announcementList[index]),
          separatorBuilder: (context, index) => Space.y(10),
          itemCount: announcementList.length,
        );
      },
    );
  }
}
