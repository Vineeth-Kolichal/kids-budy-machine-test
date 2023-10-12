import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_buddy/bloc/announcement_tab_bloc/announcement_tab_bloc.dart';
import 'package:kids_buddy/util/export_util.dart';

import 'pages/announcement_tab/announcement_tab.dart';

class AnnouncementScreen extends StatelessWidget {
  const AnnouncementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<AnnouncementTabBloc>().add(const GetAllAnnouncements());
    });
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
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
                  height: 50,
                  child: Row(
                    children: [
                      Container(
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
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        height: 35,
                        color: const Color.fromARGB(255, 240, 239, 239),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
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
