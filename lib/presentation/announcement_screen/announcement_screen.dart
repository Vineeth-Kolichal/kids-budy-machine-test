import 'package:flutter/material.dart';
import 'package:kids_buddy/util/export_util.dart';

import 'tabs/announcement_tab/announcement_tab.dart';

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
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 15,
              color: Colors.pink[900],
            ),
          ),
          title: const Text('Announcement'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      isScrollable: true,
                      tabs: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Announcement'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Notes'),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 35,
                  child: Row(
                    children: [
                      Visibility(
                        visible: Responsive.isTablet(context),
                        child: Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          color: const Color.fromARGB(255, 224, 224, 224),
                          child: Center(
                              child: Text('Class',
                                  style: TextStyle(
                                      fontSize: Responsive.isTablet(context)
                                          ? 15
                                          : 9))),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        height: 35,
                        color: const Color.fromARGB(255, 240, 239, 239),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            hint: Responsive.isTablet(context)
                                ? null
                                : const Text('Class'),
                            items: [
                              DropdownMenuItem(
                                  child: Text(
                                'Grade 1A English',
                                style: TextStyle(
                                    fontSize:
                                        Responsive.isTablet(context) ? 15 : 9),
                              ))
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
              child: const TabBarView(children: [
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
