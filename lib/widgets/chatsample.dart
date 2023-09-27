import 'package:flutter/material.dart ';
import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding:
                  const EdgeInsets.only(top: 10, left: 25, right: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Hey coder How are you?',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 80, top: 20, bottom: 20),
          alignment: Alignment.centerRight,
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding:
                  const EdgeInsets.only(top: 20, left: 10, right: 15, bottom: 15),
              decoration: BoxDecoration(
                color: const Color(0xffe4fdca),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'I am great ',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
