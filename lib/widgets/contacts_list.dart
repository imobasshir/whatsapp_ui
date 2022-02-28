import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
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
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          info[index]['profilePic'].toString(),
                        ),
                        radius: 24,
                      ),
                      title: Text(
                        info[index]['name'].toString(),
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          info[index]['message'].toString(),
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: dividerColor,
                  indent: 85.0,
                ),
              ],
            );
          }),
    );
  }
}
