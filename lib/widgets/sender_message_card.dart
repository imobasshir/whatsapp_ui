import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class SenderMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const SenderMessageCard({
    Key? key,
    required this.message,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          color: senderMessageColor,
          margin: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 5.0,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 30.0,
                  top: 5.0,
                  bottom: 20.0,
                ),
                child: Text(
                  message,
                ),
              ),
              Positioned(
                child: Row(
                  children: [
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
                bottom: 2.0,
                right: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
