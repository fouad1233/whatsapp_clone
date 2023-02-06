import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          //elevation is the shadow of the app bar
          elevation: 0,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: Colors.grey,
            ),
          ],
          bottom: const TabBar(
            //indicator color is the color of the line under the tab
            indicatorColor: tabColor,
            //indicatorWeight is the thickness of the line under the tab
            indicatorWeight: 4,
            //labelColor is the color of the text in the tab
            labelColor: tabColor,
            //unselectedLabelColor is the color of the text in the tab when it is not selected and i set it to grey to just make pressed tab text color like tab color
            unselectedLabelColor: Colors.grey,
            //labelStyle is the style of the text in the tab
            labelStyle: TextStyle(
              fontWeight: FontWeight.w500,
            ),
            tabs: [
              // Tab(
              //   icon: Icon(Icons.camera_alt),
              // ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: const Text("Mobile Screen Layout"),
      ),
    );
  }
}
