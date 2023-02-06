import 'package:flutter/material.dart';

import '../info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              info[index]['name'].toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(6),
              child: Text(
                info[index]['message'].toString(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
            ),
          );
        },
      ),
    );
  }
}