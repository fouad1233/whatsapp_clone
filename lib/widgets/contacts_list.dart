import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

import '../info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        //shrinkWrap is used to make the list view scrollable
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
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
                      backgroundImage:
                          NetworkImage(info[index]['profilePic'].toString()),
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                height: 20,
                thickness: 0.5,
                indent: 85,
                endIndent: 20,
              )
            ],
          );
        },
      ),
    );
  }
}
