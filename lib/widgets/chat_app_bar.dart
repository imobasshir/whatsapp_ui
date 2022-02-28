import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

import '../info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.082,
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  info[0]['profilePic'].toString(),
                ),
                radius: 20.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                info[0]['name'].toString(),
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 22,
                  color: Colors.grey,
                ),
                tooltip: 'Search',
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  size: 22,
                  color: Colors.grey,
                ),
                tooltip: 'More',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
