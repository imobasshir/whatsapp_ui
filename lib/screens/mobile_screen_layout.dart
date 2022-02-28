import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          backgroundColor: appBarColor,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              tooltip: 'Search',
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
              tooltip: 'More',
            ),
          ],
          bottom: TabBar(
            indicatorColor: tabColor,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            indicatorWeight: 4,
            labelStyle: GoogleFonts.lato(),
            tabs: const [
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: const ContactList(),
      ),
    );
  }
}
