import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../../bloc/announcement_tab_bloc/announcement_tab_bloc.dart';
import '../../../../../data/models/announcement_model/announcement_model.dart';
import '../../../../../util/export_util.dart';
import '../../../../widgets/space.dart';
import 'export_announcement_widgets.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    super.key,
    required this.announcementModel,
  });
  final AnnouncementModel announcementModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: size.width * 0.9),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              constraints: BoxConstraints(maxWidth: size.width * 0.65),
              decoration: const BoxDecoration(
                color: Color(0xFFF1ECF2),
                borderRadius: BorderRadius.only(
                  topLeft: radiusTwentyFive,
                  topRight: radiusTwentyFive,
                  bottomLeft: radiusTwentyFive,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        announcementModel.message,
                      ),
                      Space.y(10),
                      Visibility(
                        visible: announcementModel.filePath != null,
                        child: DocumentDetailsSection(
                            announcementModel: announcementModel),
                      ),
                    ],
                  ),
                  Text(
                    DateFormat('dd MMM yyyy hh:mm a').format(
                      announcementModel.time,
                    ),
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            Space.x(10),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF1ECF2),
              ),
              child: PopupMenuButton(
                initialValue: 0,
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      onTap: () {
                        context
                            .read<AnnouncementTabBloc>()
                            .add(DeleteAnnouncement(id: announcementModel.key));
                      },
                      child: const Text('Delete'),
                    )
                  ];
                },
                icon: const Text('T'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
