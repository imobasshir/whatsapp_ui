import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.3,
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 5.0,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: searchBarColor,
          filled: true,
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Icon(
              Icons.search_sharp,
              size: 20.0,
            ),
          ),
          hintStyle: const TextStyle(
            fontSize: 14,
          ),
          hintText: 'Search or start new chat',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: const EdgeInsets.all(6.0),
        ),
      ),
    );
  }
}
