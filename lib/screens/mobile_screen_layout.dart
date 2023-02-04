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
      ),
    );
  }
}
