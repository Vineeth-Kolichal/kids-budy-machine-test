import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_buddy/bloc/announcement_tab_bloc/announcement_tab_bloc.dart';
import 'package:open_file/open_file.dart';

import '../../../../../data/models/announcement_model/announcement_model.dart';
import '../../../../../util/export_util.dart';
import '../../../../widgets/space.dart';

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
    Size size = MediaQuery.of(context).size;

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
              constraints: BoxConstraints(maxWidth: size.width * 0.35),
              padding: const EdgeInsets.all(10),
              color: whiteColor,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/pdf-icon.png',
                    scale: Responsive.isTablet(context) ? 6 : 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth: Responsive.isTablet(context)
                                ? size.width * 0.25
                                : size.width * 0.2),
                        child: Text(
                            '${widget.announcementModel.filePath?.split('/').last}'),
                      ),
                      Text('${fileSize.toStringAsFixed(2)} MB')
                    ],
                  )
                ],
              ),
            ),
            Space.x(10),
            IconButton(
                style: IconButton.styleFrom(
                    backgroundColor: const Color(0xFFCECCCC)),
                onPressed: () async {
                  await OpenFile.open(widget.announcementModel.filePath);
                },
                icon: const Icon(
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
              style: const TextStyle(color: Colors.blue),
            ),
            Space.x(5),
            const Icon(
              Icons.thumb_up_alt_outlined,
              size: 15,
              color: Colors.blue,
            ),
            Space.x(5),
            InkWell(
                onTap: () {
                  context
                      .read<AnnouncementTabBloc>()
                      .add(Like(model: widget.announcementModel));
                },
                child: const Text(
                  "Like",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ))
          ],
        ),
        Space.y(10),
        InkWell(
          onTap: () {
            replaysBottomSheet(context, size, widget.announcementModel.replays);
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'View all replies',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 15,
                color: Colors.black,
              )
            ],
          ),
        ),
        Space.y(10),
        InkWell(
          onTap: () {
            context.read<AnnouncementTabBloc>().add(
                ShowReplyInput(announcementModel: widget.announcementModel));
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.reply_sharp,
                size: 15,
              ),
              Text('Reply')
            ],
          ),
        ),
        Space.y(10),
      ],
    );
  }

  PersistentBottomSheetController<dynamic> replaysBottomSheet(
      BuildContext context, Size size, List<String> replayList) {
    return showBottomSheet(
      elevation: 3,
      context: context,
      builder: (context) => SizedBox(
        height: size.height * 0.5,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'All replies',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
              const Divider(),
              Expanded(
                child: (replayList.isEmpty)
                    ? const Center(
                        child: Text('No replys'),
                      )
                    : ListView.separated(
                        itemBuilder: (context, index) => Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: whiteColor),
                              child: Text(replayList[index]),
                            ),
                        separatorBuilder: (context, index) => Space.y(10),
                        itemCount: replayList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
