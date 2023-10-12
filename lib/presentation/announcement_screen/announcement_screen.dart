import 'package:flutter/material.dart';
import 'package:kids_buddy/presentation/widgets/space.dart';
import 'package:kids_buddy/util/colors.dart';
import 'package:kids_buddy/util/export_util.dart';
import 'package:kids_buddy/util/responsive.dart';

import 'pages/announcement_tab/announcement_tab.dart';

class AnnouncementScreen extends StatelessWidget {
  const AnnouncementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text('Announcement'),
          // bottom: TabBar(
          //   tabAlignment: TabAlignment.start,
          //   tabs: [
          //     Text('Announcement'),
          //     Text('Notes'),
          //   ],
          // ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      isScrollable: true,
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Announcement'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Notes'),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        color: const Color.fromARGB(255, 224, 224, 224),
                        child: const Center(child: Text('Class')),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        height: 35,
                        color: const Color.fromARGB(255, 240, 239, 239),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            items: const [
                              DropdownMenuItem(child: Text('Grade 1A English'))
                            ],
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
                child: Container(
              color: whiteColor,
              child: TabBarView(children: [
                AnnouncementTab(),
                Center(
                  child: Text('Notes'),
                )
              ]),
            ))
          ]),
        ),
      ),
    );
  }
}
