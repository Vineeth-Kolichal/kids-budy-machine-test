import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kids_buddy/bloc/announcement_tab_bloc/announcement_tab_bloc.dart';
import 'package:kids_buddy/data/models/announcement_model/announcement_model.dart';
import 'package:kids_buddy/presentation/widgets/space.dart';

import '../../../../util/export_util.dart';

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
                    context.read<AnnouncementTabBloc>().add(ShowInputSection());
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
          itemBuilder: (context, index) =>
              MessageTile(announcementModel: announcementList[index]),
          separatorBuilder: (context, index) => Space.y(10),
          itemCount: announcementList.length,
        );
      },
    );
  }
}

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
        constraints: BoxConstraints(maxWidth: size.width * 0.85),
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

class DocumentDetailsSection extends StatefulWidget {
  const DocumentDetailsSection({
    super.key,
    required this.announcementModel,
  });

  final AnnouncementModel announcementModel;

  @override
  State<DocumentDetailsSection> createState() => _DocumentDetailsSectionState();
}

class _DocumentDetailsSectionState extends State<DocumentDetailsSection> {
  double fileSize = 0.0;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if (widget.announcementModel.filePath != null) {
        int size = await File(widget.announcementModel.filePath!).length();
        setState(() {
          fileSize = size / (1024 * 1024);
        });
      }
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              color: whiteColor,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/pdf-icon.png',
                    scale: 6,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          '${widget.announcementModel.filePath?.split('/').last}'),
                      Text('${fileSize.toStringAsFixed(2)} MB')
                    ],
                  )
                ],
              ),
            ),
            Space.x(10),
            IconButton(
                style: IconButton.styleFrom(backgroundColor: Color(0xFFCECCCC)),
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_downward_outlined,
                  color: whiteColor,
                ))
          ],
        ),
        Space.y(10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${widget.announcementModel.likeCount}',
              style: TextStyle(color: Colors.blue),
            ),
            Space.x(5),
            Icon(
              Icons.thumb_up_alt_outlined,
              size: 15,
              color: Colors.blue,
            ),
            Space.x(5),
            InkWell(
                onTap: () {},
                child: Text(
                  "Like",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ))
          ],
        ),
        Space.y(10),
        Text('View all replay'),
        Space.y(10),
        const Row(
          mainAxisSize: MainAxisSize.min,
          children: [Icon(Icons.reply_sharp), Text('Replay')],
        ),
        Space.y(10),
      ],
    );
  }
}

class InputSection extends StatelessWidget {
  const InputSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? 30 : 15, vertical: 8),
      // height: 150,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F3),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextFormField(
          controller:
              context.read<AnnouncementTabBloc>().announcementController,
          maxLines: Responsive.isTablet(context) ? 4 : 2,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
              hintText: 'Enter your announcement here',
              border: InputBorder.none),
        ),
        BlocSelector<AnnouncementTabBloc, AnnouncementTabState, String?>(
          selector: (state) {
            return state.pickedFileName;
          },
          builder: (context, filename) {
            return Visibility(
              visible: (filename != null),
              child: Text('$filename'),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(color: whiteColor),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: const Color.fromARGB(255, 224, 224, 221),
              ),
              onPressed: () {
                context.read<AnnouncementTabBloc>().add(const PickFile());
              },
              icon: const Icon(
                Icons.attach_file,
                color: blackColor,
              ),
              label: const Text(
                'Attach file',
                style: TextStyle(color: blackColor),
              ),
            ),
            IconButton(
              style: IconButton.styleFrom(backgroundColor: pinkColor),
              color: whiteColor,
              onPressed: () {
                context
                    .read<AnnouncementTabBloc>()
                    .add(const AddAnnouncement());
              },
              icon: const Icon(Icons.send_sharp),
            ),
          ],
        )
      ]),
    );
  }
}
