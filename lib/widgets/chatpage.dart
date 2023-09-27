import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/chatsample.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(top: 10, left: 5),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                size: 25,
              ),
            ),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: new Image.asset('assets/p1.jpg',
                      height: 45, width: 45, fit: BoxFit.cover),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Friend 1',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Online',
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 10, right: 25),
              child: Icon(
                CupertinoIcons.video_camera_solid,
                size: 33,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0, top: 7),
              child: Icon(
                Icons.call,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 7, right: 10),
              child: Icon(
                Icons.more_vert,
                size: 30,
              ),
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bcimage.png'), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: 300,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xfffff3c2),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5), blurRadius: 8)
                  ]),
              child: const Text(
                'Messages are end-to-end encrypted. No one outside of this chat, not even WhatsApp, can read or listen to them.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ),
            const ChatSample(),
          ]),
        ),
      ),
    );
  }
}
