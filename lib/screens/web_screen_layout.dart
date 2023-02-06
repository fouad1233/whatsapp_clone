import 'package:flutter/material.dart';

import '../widgets/contacts_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: const [
              //web profile bar
              //web search bar
              ContactsList(),
            ],
          ),
          //web chat screen
        ],
      ),
    );
  }
}
