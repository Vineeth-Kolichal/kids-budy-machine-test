import 'package:flutter/material.dart';

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
        body: Column(children: [
          Row(
            children: [
              SizedBox(
                child: TabBar(
                  tabs: [
                    Text('Announcement'),
                    Text('Notes'),
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
