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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  //web profile bar
                  //web search bar
                  ContactsList(),
                ],
              ),
            ),
          ),
          //web chat screen
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover, 
              ), 
            ),
          ),
        ],
      ),
    );
  }
}
