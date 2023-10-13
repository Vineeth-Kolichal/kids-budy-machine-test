import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_buddy/data/models/announcement_model/announcement_model.dart';
import 'package:kids_buddy/presentation/widgets/space.dart';

import '../../../../../bloc/announcement_tab_bloc/announcement_tab_bloc.dart';
import '../../../../../util/export_util.dart';

class InputSection extends StatelessWidget {
  const InputSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AnnouncementTabBloc, AnnouncementTabState,
        AnnouncementModel?>(
      selector: (state) {
        return state.replayItem;
      },
      builder: (context, state) {
        if (state != null) {
          return Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF1F1F3),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.reply_sharp,
                            size: 15,
                          ),
                          Text('Reply')
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            context
                                .read<AnnouncementTabBloc>()
                                .add(ShowReplyInput(announcementModel: null));
                          },
                          icon: const Icon(Icons.close))
                    ],
                  ),
                  Space.y(5),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(state.message),
                  ),
                  Space.y(10),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: context
                              .read<AnnouncementTabBloc>()
                              .announcementController,
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                              hintText: 'Enter you replay here',
                              border: InputBorder.none),
                        ),
                      ),
                      IconButton(
                        style: IconButton.styleFrom(backgroundColor: pinkColor),
                        color: whiteColor,
                        onPressed: () {
                          context
                              .read<AnnouncementTabBloc>()
                              .add(SendReply(model: state));
                        },
                        icon: const Icon(Icons.send_sharp),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
        return Container(
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.isTablet(context) ? 30 : 15, vertical: 8),
          // height: 150,
          decoration: BoxDecoration(
            color: const Color(0xFFF1F1F3),
            borderRadius: BorderRadius.circular(25),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
      },
    );
  }
}
