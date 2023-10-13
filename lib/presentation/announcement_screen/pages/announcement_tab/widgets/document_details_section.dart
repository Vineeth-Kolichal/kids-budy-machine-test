import 'dart:io';

import 'package:flutter/material.dart';
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
                onTap: () {},
                child: const Text(
                  "Like",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ))
          ],
        ),
        Space.y(10),
        InkWell(onTap: () {}, child: const Text('View all replay')),
        Space.y(10),
        InkWell(
          onTap: () {},
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.reply_sharp,
                size: 15,
              ),
              Text('Replay')
            ],
          ),
        ),
        Space.y(10),
      ],
    );
  }
}
