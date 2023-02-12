import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

import '../info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
            color: Colors.grey,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
            color: Colors.grey,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.grey,
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          TextField(
            decoration: InputDecoration(
              fillColor: mobileChatBoxColor,
              filled: true,
              prefixIcon: const Padding(
                padding:   EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.insert_emoticon,
                  color: Colors.grey,
                ),
              ),
              suffixIcon:  Padding(
                padding: const  EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.money,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              hintText: 'Type a message',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}
